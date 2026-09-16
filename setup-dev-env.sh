#!/usr/bin/env bash
set -euo pipefail

GHIDRA_VERSION="12.1.3"
GHIDRA_BUILD_DATE="20260817"
GHIDRA_SHA256="93a5d11a9ad510622acaaf908c556a7b9b764d338e78a7567f3689bf5081fd54"
GHIDRA_ARCHIVE="ghidra_${GHIDRA_VERSION}_PUBLIC_${GHIDRA_BUILD_DATE}.zip"
GHIDRA_URL="https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_${GHIDRA_VERSION}_build/${GHIDRA_ARCHIVE}"

TOOLCHAIN_HOME="${GENX_TOOLCHAIN_HOME:-$HOME/.local/share/generation-x-toolchain}"
BIN_DIR="${GENX_BIN_DIR:-$HOME/.local/bin}"
PY_ENV="$TOOLCHAIN_HOME/python"
GHIDRA_DIR="$TOOLCHAIN_HOME/ghidra_${GHIDRA_VERSION}_PUBLIC"
EMU_DIR="$TOOLCHAIN_HOME/emulators"
DOWNLOAD_DIR="$TOOLCHAIN_HOME/downloads"

TOOLS_ONLY=0
if [[ "${1:-}" == "--tools-only" ]]; then
    TOOLS_ONLY=1
fi

log() { printf '[genx-setup] %s\n' "$*"; }
warn() { printf '[genx-setup] WARNING: %s\n' "$*" >&2; }

install_system_packages() {
    if ! command -v apt-get >/dev/null 2>&1; then
        warn "Automatic package installation currently supports Debian/Ubuntu only."
        return 0
    fi

    local sudo_cmd=()
    if [[ "$(id -u)" -ne 0 ]]; then
        if command -v sudo >/dev/null 2>&1; then
            sudo_cmd=(sudo)
        else
            warn "sudo is unavailable; skipping system package installation."
            return 0
        fi
    fi

    log "Installing system analysis/build packages"
    "${sudo_cmd[@]}" apt-get update
    "${sudo_cmd[@]}" apt-get install -y \
        build-essential git curl ca-certificates unzip zip p7zip-full jq file vim-common \
        cmake ninja-build ccache pkg-config \
        clang lld llvm \
        binutils-aarch64-linux-gnu gcc-aarch64-linux-gnu g++-aarch64-linux-gnu \
        python3 python3-venv python3-pip \
        openjdk-21-jdk \
        zstd lz4 \
        libgl1-mesa-dev libvulkan-dev vulkan-tools mesa-vulkan-drivers \
        libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxfixes-dev \
        libwayland-dev libxkbcommon-dev libdbus-1-dev libudev-dev
}

install_python_tools() {
    log "Installing Python reverse-engineering environment"
    python3 -m venv "$PY_ENV"
    "$PY_ENV/bin/python" -m pip install --upgrade pip wheel
    "$PY_ENV/bin/python" -m pip install \
        capstone keystone-engine lief pyelftools construct kaitaistruct zstandard lz4
    mkdir -p "$BIN_DIR"
    ln -sfn "$PY_ENV/bin/python" "$BIN_DIR/genx-python"
}

install_ghidra() {
    if [[ -x "$GHIDRA_DIR/ghidraRun" ]]; then
        log "Ghidra ${GHIDRA_VERSION} already installed"
        mkdir -p "$BIN_DIR"
        ln -sfn "$GHIDRA_DIR/ghidraRun" "$BIN_DIR/ghidra-genx"
        return 0
    fi

    mkdir -p "$DOWNLOAD_DIR" "$TOOLCHAIN_HOME" "$BIN_DIR"
    local archive="$DOWNLOAD_DIR/$GHIDRA_ARCHIVE"
    log "Downloading Ghidra ${GHIDRA_VERSION} from the official NSA GitHub release"
    curl --fail --location --retry 3 -o "$archive" "$GHIDRA_URL"
    printf '%s  %s\n' "$GHIDRA_SHA256" "$archive" | sha256sum --check --status || {
        rm -f "$archive"
        echo "Ghidra SHA-256 verification failed" >&2
        exit 1
    }
    unzip -q "$archive" -d "$TOOLCHAIN_HOME"
    ln -sfn "$GHIDRA_DIR/ghidraRun" "$BIN_DIR/ghidra-genx"
    log "Ghidra installed and checksum verified"
}

install_rust() {
    if command -v cargo >/dev/null 2>&1; then
        log "Rust/Cargo already available"
        return 0
    fi
    log "Installing Rust stable with rustup for emulator research builds"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal
    # shellcheck disable=SC1090
    source "$HOME/.cargo/env"
}

clone_or_update() {
    local url="$1"
    local dst="$2"
    if [[ -d "$dst/.git" ]]; then
        log "Updating $(basename "$dst")"
        git -C "$dst" fetch --all --prune
        git -C "$dst" pull --ff-only || warn "Could not fast-forward $dst; leaving local checkout unchanged."
        git -C "$dst" submodule update --init --recursive
    else
        log "Cloning $url"
        git clone --recursive "$url" "$dst"
    fi
}

install_emulator_research() {
    mkdir -p "$EMU_DIR"

    # Pound is an early-stage Switch 1/2 emulator project. Build failures are
    # non-fatal because upstream is under active development.
    clone_or_update "https://github.com/pound-emu/pound.git" "$EMU_DIR/pound"
    if command -v cmake >/dev/null 2>&1 && command -v clang >/dev/null 2>&1; then
        log "Attempting Pound release build"
        if cmake --preset release -S "$EMU_DIR/pound" && cmake --build "$EMU_DIR/pound/build/release" --parallel; then
            log "Pound build completed"
        else
            warn "Pound is highly work-in-progress; source is installed but this upstream snapshot did not build here."
        fi
    fi

    # oboromi is kept as a second Switch 2 research reference. Upstream states
    # that it does not run commercial games/firmware yet, so source checkout is
    # useful for architecture research without pretending it is a usable game runner.
    install_rust
    clone_or_update "https://github.com/0xNikilite/oboromi.git" "$EMU_DIR/oboromi"
}

print_summary() {
    cat <<EOF

Generation X toolchain root: $TOOLCHAIN_HOME
Ghidra launcher:             $BIN_DIR/ghidra-genx
Python RE environment:       $PY_ENV
Emulator research sources:   $EMU_DIR

Add this to PATH if needed:
  export PATH="$BIN_DIR:$HOME/.cargo/bin:\$PATH"

No ROMs, firmware, console keys, title keys, or decrypted game images are downloaded by this installer.
EOF
}

mkdir -p "$TOOLCHAIN_HOME" "$BIN_DIR"
install_system_packages
install_python_tools
install_ghidra
if [[ "$TOOLS_ONLY" -eq 0 ]]; then
    install_emulator_research
fi
print_summary

#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
TOOLS_DIR="$ROOT_DIR/.tools"
BIN_DIR="$TOOLS_DIR/bin"
mkdir -p "$BIN_DIR"
if [[ -d "$ROOT_DIR/.git" ]]; then
  touch "$ROOT_DIR/.git/info/exclude"
  grep -qxF '.tools/' "$ROOT_DIR/.git/info/exclude" || echo '.tools/' >> "$ROOT_DIR/.git/info/exclude"
fi
if [[ "$(id -u)" -eq 0 ]]; then SUDO=(); elif command -v sudo >/dev/null 2>&1; then SUDO=(sudo); else SUDO=(); fi
if command -v apt-get >/dev/null 2>&1; then
  "${SUDO[@]}" apt-get update || true
  DEBIAN_FRONTEND=noninteractive "${SUDO[@]}" apt-get install -y --no-install-recommends \
    ca-certificates curl git make cmake ninja-build python3 python3-venv build-essential \
    binutils llvm clang lld file jq xz-utils unzip p7zip-full patch || true
fi
cat > "$TOOLS_DIR/activate.sh" <<ACTIVATE
export PATH="$BIN_DIR:\$PATH"
ACTIVATE
printf '%s\n' 'Platform-neutral research tools ready. No emulator was installed because the target platform is not yet verified.'

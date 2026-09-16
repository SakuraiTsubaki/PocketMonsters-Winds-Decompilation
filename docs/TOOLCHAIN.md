# Generation X Analysis Toolchain

This repository uses a target-neutral reverse-engineering environment until a verified Winds target is available. The environment is installed with the root-level `setup-dev-env.sh` script and does not download ROMs, firmware, console keys, title keys, or decrypted game images.

## Install

On Debian/Ubuntu Linux:

```bash
chmod +x setup-dev-env.sh
./setup-dev-env.sh
```

Tools only, without emulator research checkouts:

```bash
./setup-dev-env.sh --tools-only
```

The default shared install root is:

```text
~/.local/share/generation-x-toolchain/
```

This lets Winds and Waves use the same host toolchain without duplicating large applications.

## Core analysis tools

The installer prepares:

- Ghidra 12.1.3, pinned to the official NSA GitHub release and verified by SHA-256
- OpenJDK 21
- LLVM / Clang / LLD
- GNU binutils plus AArch64 cross-binutils and cross-compilers
- CMake, Ninja, ccache, and standard C/C++ build tools
- Python 3 virtual environment
- Capstone
- Keystone Engine
- LIEF
- pyelftools
- Construct
- Kaitai Struct runtime
- zstandard / lz4 Python support
- `file`, `jq`, `xxd`, `7z`, `zstd`, `lz4`, and ZIP utilities
- Vulkan/OpenGL development and inspection packages used by emulator research builds

These tools are available for binary inspection and tooling work without assuming any Winds executable/container format in advance.

## Emulator research environment

### Pound

The installer clones `pound-emu/pound` recursively and attempts its Linux release build with Clang/CMake/Ninja.

Upstream describes Pound as an open-source Switch 1/2 emulator that is **highly work in progress**. It is included as a research/debugging environment, not as evidence that Winds is currently runnable under emulation.

Repository: <https://github.com/pound-emu/pound>

### oboromi

The installer also prepares Rust and clones `0xNikilite/oboromi` as a second Switch 2 architecture/emulation research reference.

Upstream explicitly states that oboromi currently cannot run commercial games or firmware. Do not record successful Winds execution unless it is directly observed later.

Repository: <https://github.com/0xNikilite/oboromi>

## Verification rule

Tool installation is not target verification. Until an actual target build is supplied and verified, platform-specific executable names, layouts, addresses, container formats, symbols, and runtime behavior remain unknown.

When a verified target becomes available:

1. preserve it locally as a read-only input;
2. record identity and hashes before analysis;
3. use the installed tools against researcher-supplied local data;
4. keep ROM/game images, firmware, and keys out of Git;
5. record observations before assigning semantic meaning.

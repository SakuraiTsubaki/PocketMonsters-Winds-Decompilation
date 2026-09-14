# Repository Structure

This document defines the intended long-term layout of the planned decompilation project. Directories should be added only when verified target information or real project material exists; avoid creating empty placeholder trees only for appearance.

## Top-level layout

- `src/` — reconstructed source code and implementation files
- `include/` — shared declarations, headers, constants, and interfaces
- `data/` — structured game data reconstructed into editable source form
- `assets/` — extracted, reconstructed, or recreated project assets that belong in the repository
- `tools/` — extraction, conversion, analysis, repacking, and verification utilities
- `tests/` — automated checks and regression tests
- `manifests/` — hashes, inventories, version maps, and reproducibility metadata
- `docs/` — research notes, format documentation, roadmaps, status, and verification records
- `.github/` — issue templates, pull request templates, and GitHub project configuration

## Organization principles

1. Do not assume a platform, executable format, engine, build, or resource layout before it is verified.
2. Prefer source and reproducible project data over opaque generated output.
3. Keep version-specific material clearly separated when releases differ.
4. Deduplicate byte-identical assets when practical and record shared usage in metadata or manifests.
5. Keep human-viewable assets such as PNG previews when they are useful for review and verification.
6. Do not commit retail game images, console keys, or other redistributable game binaries.

## Growth policy

The final source tree must follow verified target architecture rather than a structure copied from an earlier generation. Add platform-specific directories only after the relevant executable, container, or resource layout has been authoritatively identified.
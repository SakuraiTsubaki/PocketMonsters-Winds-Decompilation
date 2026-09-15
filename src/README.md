# Reconstructed Source

This directory is reserved for source reconstructed from observed behavior and binary analysis.

## Rules

- Do not place retail binaries, keys, or raw local dumps here.
- Keep subsystem boundaries explicit.
- Use neutral temporary names for unknown symbols.
- Record evidence for semantic renames and structure recovery.
- Keep version-specific implementations separated when behavior differs.
- Do not mark code as matched until verification demonstrates equivalence to the intended target.

## Initial subsystem layout

Create subsystem directories only when evidence exists for the corresponding target code. Expected categories may include runtime, filesystem/resource loading, rendering, audio, input, field/world, battle, UI, networking, save, scripting/events, and game-data handling.

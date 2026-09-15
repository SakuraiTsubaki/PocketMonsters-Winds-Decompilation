# Decompilation Workflow

This repository reconstructs source-level understanding from legally obtained target builds while keeping retail game images, keys, and other restricted console material out of Git.

## Ground rules

1. Preserve every target build read-only outside the repository.
2. Record only non-sensitive metadata needed for reproducibility (version, region/language, hashes, observed layout, and provenance notes).
3. Never commit retail game images, title keys, production keys, or extracted material that should remain local.
4. Separate observation from reconstruction. A hypothesis is not treated as a matched source implementation until it is independently verified.
5. Keep version-specific behavior and data distinct; do not silently merge revisions.

## Phase 0 — target inventory

Before binary-specific work begins:

- identify each supported target version and update;
- record region/language and version identifiers;
- calculate local hashes and keep them in the version inventory;
- confirm that ignored retail images and keys are not tracked by Git.

## Phase 1 — executable and container map

For each observed target:

- enumerate executable modules and major data/resource containers;
- record offsets/virtual addresses only when directly observed;
- identify compression, archive, serialization, and relocation formats;
- add a machine-readable inventory under `manifests/`.

## Phase 2 — symbols and subsystems

Build the symbol map incrementally:

- startup/runtime;
- memory and allocation;
- filesystem/resource loading;
- rendering;
- audio;
- input;
- world/field;
- battle;
- UI;
- networking/online;
- save data;
- scripting/events;
- game-data tables.

Unknown functions receive neutral temporary identifiers. Do not invent semantic names without evidence.

## Phase 3 — source reconstruction

Reconstructed code belongs under `src/` and should be grouped by subsystem. Every meaningful reconstruction should carry enough evidence to explain why it matches the observed target.

Validation states:

- **Unverified** — proposed but not independently checked.
- **Observed** — confirmed directly in a target build or extracted data.
- **Reproduced** — behavior/data can be recreated with documented steps.
- **Matched** — reconstructed output is verified against the intended target.

## Phase 4 — tooling and verification

Add reproducible local tooling under `tools/` for metadata extraction, comparison, symbol processing, resource analysis, and validation. Tools must require users to supply their own local target data and must not embed retail content or keys.

## Current repository state

The repository currently contains project documentation and manifests but no observed target executable/data map or reconstructed source. Binary-specific decompilation begins only after a target build is inventoried and verified.

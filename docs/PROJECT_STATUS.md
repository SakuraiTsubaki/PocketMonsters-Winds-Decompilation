# Project Status

**Current stage:** Phase 0 — target inventory / pre-decompilation baseline

The repository now has an explicit decompilation workflow, reconstructed-source root, and machine-readable target inventory. No verified target build is currently inventoried, so binary-specific analysis has not started yet.

## Version inventory

| Target | Region | Language | Revision / update | Verification | Notes |
| --- | --- | --- | --- | --- | --- |
| Not yet inventoried | — | — | — | Unverified | Add only after a target build is directly observed and verified |

Machine-readable inventory: `manifests/version-inventory.json`

## Progress

- [x] Establish decompilation workflow and repository rules
- [x] Create reconstructed-source root (`src/`)
- [x] Create machine-readable target version inventory
- [ ] Inventory first verified target build
- [ ] Document executable and section layout
- [ ] Map symbols, functions, and major subsystems
- [ ] Document game-data formats and resource containers
- [ ] Reconstruct scripts, events, and behavior
- [ ] Reconstruct asset pipelines and metadata
- [ ] Add reproducible extraction/repacking tooling
- [ ] Add automated verification where practical

## Validation levels

- **Unverified** — proposed or recorded but not independently checked.
- **Observed** — confirmed directly in a target build or extracted data.
- **Reproduced** — behavior or data can be recreated with documented steps.
- **Matched** — reconstructed output is verified against the intended target.

## Next milestones

1. Inventory the first verified target version/revision without committing the retail image or keys.
2. Record non-sensitive hashes and version metadata in `manifests/version-inventory.json`.
3. Build the first executable/data-container map from direct observation.
4. Select the first subsystem for source reconstruction only after the map exists.

See `docs/DECOMPILATION_WORKFLOW.md` for the required evidence and verification flow.

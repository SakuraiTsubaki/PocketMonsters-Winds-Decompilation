# Project Status

**Current stage:** Phase 0 — target inventory tooling ready / awaiting first observed target

The repository now has an explicit decompilation workflow, reconstructed-source root, machine-readable target inventory, a metadata-only local target inventory tool, and a schema for the first executable/container map. No verified target build is currently inventoried, so binary-specific findings remain intentionally empty.

## Version inventory

| Target | Region | Language | Revision / update | Verification | Notes |
| --- | --- | --- | --- | --- | --- |
| Not yet inventoried | — | — | — | Unverified | Add only after a target build is directly observed and verified |

Machine-readable inventory: `manifests/version-inventory.json`

## Progress

- [x] Establish decompilation workflow and repository rules
- [x] Create reconstructed-source root (`src/`)
- [x] Create machine-readable target version inventory
- [x] Add metadata-only target inventory tooling (`tools/inventory_target.py`)
- [x] Define Phase 1 executable/container map schema
- [ ] Inventory first verified target build
- [ ] Populate first observed executable and section layout
- [ ] Map symbols, functions, and major subsystems
- [ ] Document game-data formats and resource containers
- [ ] Reconstruct scripts, events, and behavior
- [ ] Reconstruct asset pipelines and metadata
- [ ] Add reproducible extraction/repacking tooling where lawful and appropriate
- [ ] Add automated verification where practical

## Validation levels

- **Unverified** — proposed or recorded but not independently checked.
- **Observed** — confirmed directly in a target build or extracted data.
- **Reproduced** — behavior/data can be recreated with documented steps.
- **Matched** — reconstructed output is verified against the intended target.

## Next milestones

1. Run `tools/inventory_target.py` against the first researcher-supplied local target.
2. Review the generated metadata manifest and register the target in `manifests/version-inventory.json`.
3. Populate the executable/container map from direct observation using `manifests/executable-map.schema.json`.
4. Select the first subsystem for source reconstruction only after the observed map exists.

See `docs/DECOMPILATION_WORKFLOW.md` and `tools/README.md` for the required evidence and local workflow.

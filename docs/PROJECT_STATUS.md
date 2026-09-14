# Project Status

**Current stage:** Pre-release public-source census (Phase 0 in progress)

This document tracks decompilation progress, target-version coverage, validation level, and the next major milestones.

No retail game image, executable, package, or decrypted game data is available to this project at this stage. Current work therefore focuses on authoritative public-source identification and worldwide regional/language comparison without inventing build-level details.

## Version inventory

| Target | Region | Language | Revision / update | Verification | Notes |
| --- | --- | --- | --- | --- | --- |
| Pocket Monsters Winds | Japan baseline with worldwide public references | 11 announced selectable languages | Pre-release; 2027 planned release | Reference only | Nintendo Switch 2 is officially announced; retail build, revision, and hashes remain unknown |

## Public-source census progress

- [x] Identify the Japanese official product baseline.
- [x] Confirm the officially announced Nintendo Switch 2 platform and 2027 worldwide release window from Japanese primary sources.
- [x] Start a machine-readable official public-source registry.
- [x] Begin Korean, English, European, Latin American, Brazilian Portuguese, and Chinese official-surface comparison.
- [ ] Complete the official region/locale endpoint inventory.
- [ ] Inventory every official news item, trailer, store page, and official video/social publication from the initial announcement onward.
- [ ] Build field-by-field localization and regional-difference matrices.
- [ ] Track official page revisions and announcement changes over time.

See `research/PUBLIC_SOURCE_CENSUS.md` and `../manifests/public-sources.json`.

## Decompilation progress

- [ ] Establish authoritative retail version/revision inventory and hashes when target material becomes available.
- [ ] Document executable and section layout.
- [ ] Map symbols, functions, and major subsystems.
- [ ] Document game-data formats and resource containers.
- [ ] Reconstruct scripts, events, and behavior.
- [ ] Reconstruct asset pipelines and metadata.
- [ ] Add reproducible extraction/repacking tooling.
- [ ] Add automated verification where practical.

## Validation levels

- **Unverified** — proposed or recorded but not independently checked.
- **Observed** — confirmed directly in a target build or extracted data.
- **Reproduced** — behavior or data can be recreated with documented steps.
- **Matched** — reconstructed output is verified against the intended target.
- **Reference only** — authoritative public information used for comparison, but not a verified retail build target.

Public-source confirmation must not be promoted to `Observed`, `Reproduced`, or `Matched` build/data status unless the corresponding target-build evidence exists.

## Next milestones

1. Complete the Japanese-first worldwide official public-source census.
2. Maintain a source-linked localization and regional-difference record.
3. Preserve changes across later announcements instead of overwriting earlier public states.
4. When authoritative retail target material becomes available, identify revisions and hashes before beginning target-specific binary or resource reconstruction.

Update this file whenever the project reaches a meaningful milestone or adds a new supported target.

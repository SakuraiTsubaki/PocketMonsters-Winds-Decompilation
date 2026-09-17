# Bug Eradication Baseline

Status date: 2026-09-17

## Current target state

- Target repository: `SakuraiTsubaki/PocketMonsters-Winds-Decompilation`
- Public target: Pokémon Winds
- Official public release window: 2027
- Official public platform: Nintendo Switch 2
- Repository exact build identity: not yet selected
- Repository master defect catalog: initialized at `manifests/bugs.csv`
- Bug eradication policy: `docs/BUG_ERADICATION_POLICY.md`

Official public source: https://windswaves.pokemon.com/en-us/

## Interpretation

An empty defect catalog at this stage does **not** mean the game has zero defects. It means there is not yet an identified retail/update build in this repository against which defects can be reproduced and verified.

Do not promote trailer footage, preview behavior, rumor, leak claims, or unsupported community reports to confirmed defects.

## Start condition for target-specific bug fixing

When a legitimate target build or extracted target data is available for local analysis outside Git:

1. record exact release/update/DLC, region, language, distribution form, and hashes;
2. inventory executable/modules/filesystem and retain non-ROM manifests;
3. establish clean boot/save/progression baselines;
4. begin systematic defect sweeps by subsystem;
5. create one catalog entry per root defect;
6. add a regression test or deterministic verification procedure before closure;
7. check the corresponding Waves subsystem for shared-root defects.

## Completion condition

The maintained build reaches the project goal only when no known reproducible defect remains open, every fixed defect has regression evidence, and the original defective behavior remains documented for provenance.
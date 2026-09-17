# Bug Eradication Policy

This repository adopts a zero-known-defect objective for the reconstructed or modified Pocket Monsters Winds target.

The original game's behavior must be documented faithfully, including defects. The working build must not preserve a confirmed defect merely because it existed in the original. Historical behavior and corrected behavior are recorded separately.

## Scope

Track and eliminate every reproducible defect found in any supported base release, update, DLC, region, language, or distribution variant, including:

- crashes, hangs, freezes, boot failures, and fatal errors;
- save corruption, save loss, migration failures, and progression blockers;
- softlocks, hardlocks, sequence breaks caused by broken state, and unrecoverable event states;
- battle calculation, move, ability, item, status, AI, targeting, turn-order, capture, evolution, breeding, and encounter defects;
- map, collision, clipping, out-of-bounds, camera, traversal, spawn, despawn, physics, and environmental defects;
- inventory, economy, duplication, reward, quest, flag, event, date/time, weather, and scheduling defects;
- graphics, animation, model, texture, shader, UI, menu, input, controller, accessibility, text, font, layout, localization, audio, and music defects;
- performance, loading, streaming, memory, resource-lifetime, concurrency, synchronization, and stability defects;
- local communication, online communication, matchmaking, trade, battle, event distribution, and Pokémon HOME integration defects;
- version-specific, language-specific, hardware-specific, update-specific, DLC-specific, and regression defects;
- malformed-data handling, invalid state handling, boundary conditions, integer/float errors, overflow/underflow, null/invalid references, and unsafe assumptions;
- unintended interactions between otherwise valid systems;
- defects exposed by normally inaccessible or unused data when that data can affect a supported build.

Do not classify intended mechanics, deliberate restrictions, balance choices, or merely surprising behavior as bugs without evidence.

## Evidence states

Every entry must use one of these states:

- `unverified` — report exists but has not been reproduced or proven;
- `reproduced` — behavior has been reproduced on an identified target build;
- `confirmed` — reproduction and root-cause evidence establish a defect;
- `fixed` — a corrective change exists but final cross-target validation is incomplete;
- `verified-fixed` — regression tests and required target/version checks pass;
- `not-a-bug` — evidence shows intended or valid behavior;
- `duplicate` — same root defect as another tracked entry;
- `cannot-test` — required target/input is currently unavailable.

A rumor, video, forum post, or third-party claim is never enough by itself to mark a defect `confirmed`.

## Required identity before a fix is accepted

For every reproduced defect, record as much of the following as the available target permits:

- game/version target: Winds;
- release/update/DLC identity;
- region and language;
- executable/package/build identifiers;
- cryptographic hash of the user-supplied game image or relevant extracted executable/module when legally and technically available;
- hardware/firmware/runtime environment if behavior may depend on it;
- exact reproduction steps, expected behavior, actual behavior, and frequency.

Complete game images remain outside Git. Store only hashes, manifests, extracted non-ROM work products, patches, tests, logs, and documentation permitted by `ARTIFACT_POLICY.md`.

## Root-cause rule

Do not patch only the visible symptom when the underlying cause can be established. Prefer the narrowest change that repairs the invalid state or logic at its source and preserves intended behavior elsewhere.

For each confirmed defect, capture:

1. reproduction;
2. affected subsystem and data/code path;
3. root cause;
4. corrective change;
5. regression test or deterministic verification procedure;
6. versions/languages/platform conditions checked;
7. any intentional behavior difference from the original;
8. patch/build artifact references and verification hashes.

## Closure gate

A defect may be marked `verified-fixed` only when all applicable conditions pass:

- the original defect is reproducible on an identified affected build;
- the corrected build no longer reproduces it;
- a regression test or repeatable validation procedure exists;
- adjacent behavior is checked for regressions;
- version-specific behavior is validated where relevant;
- language/region-specific behavior is validated where relevant;
- save compatibility and progression are checked when affected;
- network or multiplayer peers are checked when affected;
- performance and resource usage are checked when the fix touches hot paths;
- the fix is documented and linked to its implementation/patch artifact.

No defect is closed solely because it "seems fixed" in one manual attempt.

## Original preservation

Never erase the historical record of an original defect. Keep its reproduction, affected versions, evidence, and pre-fix behavior in the catalog even after correction. If a later official update fixes the same issue, record the official fixed version separately from this project's own correction.

## Version parity

Winds and Waves must be compared whenever the same subsystem exists in both versions. A defect found in one version triggers a check of the corresponding code/data path in the other version. Shared-root defects should use aligned IDs and cross-links.

## Working files

- `manifests/bugs.csv` — master defect catalog.
- `.github/ISSUE_TEMPLATE/bug.yml` — structured report intake.
- `tests/` — regression and verification tests as implementation becomes available.
- `patches/` — distributable corrective patches and their manifests where appropriate.
- `logs/` — reproduction and verification logs.

The long-term target is simple: no known reproducible defect remains unfixed in the maintained build, while the original behavior and evidence remain fully documented.
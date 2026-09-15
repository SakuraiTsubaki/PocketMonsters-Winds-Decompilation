# Verification Guide

This planned repository uses the same evidence standards as the active decompilation repositories, but no target platform, build, region, or revision should be assumed until it is authoritatively identified.

## Verification levels

- **Unverified** — a proposal, note, hypothesis, or imported claim that has not been independently checked.
- **Observed** — confirmed directly in an identified target build, executable, extracted file, or runtime observation.
- **Reproduced** — the observation can be recreated using documented steps, tooling, inputs, and verified target information.
- **Matched** — reconstructed output is verified against an identified target using hashes, byte comparison, deterministic output, or another clearly defined exact-match criterion.

## Minimum evidence

When a target becomes available for research, record:

- verified platform, build, region, language, revision, or update
- cryptographic hashes or stable identifiers
- file names, archive paths, offsets, symbols, addresses, or table identifiers
- tooling and commands used
- expected and actual output
- logs, diffs, manifests, screenshots, or test results
- known limitations and unresolved mismatches

## Rules

1. Do not populate target information from speculation.
2. Identify the target in `VERSIONS.md` before making version-specific claims.
3. Distinguish behavioral similarity from exact matching.
4. Keep reproduction steps and evidence with every major verification result.
5. Do not commit retail game images, console keys, or other redistributable game binaries.
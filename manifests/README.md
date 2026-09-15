# Manifests

This directory will store machine-readable and reviewable inventories for the planned decompilation project. Do not populate target-specific platform, build, region, language, revision, archive, executable, or resource-layout fields until they are authoritatively identified and verified.

## Purpose

A manifest should eventually make it possible to answer:

- What is this file or asset?
- Which verified target does it belong to?
- Where did it come from inside the verified target data?
- How was it extracted, reconstructed, or generated?
- How can its identity be verified?
- Is it shared with another verified target or stored once to avoid duplication?

## Recommended fields

Use `id`, `path`, `kind`, `target`, `source`, `size`, `hashes`, `generated_by`, `verification`, `shared_with`, and `notes` as appropriate.

## Rules

1. Use `null`, `unknown`, or `TBD` until information is verified.
2. Do not infer a target platform, executable format, engine, build, region, language, revision, or resource layout from another generation.
3. Prefer cryptographic hashes for identity-sensitive files.
4. Do not deduplicate assets only because they look or sound identical; verify byte identity or hashes when practical.
5. Do not place retail game images, console keys, or redistributable game binaries in this directory.

See `example.asset-manifest.json` and `../docs/PROJECT_STANDARDS.md`.

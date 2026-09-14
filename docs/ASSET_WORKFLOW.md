# Asset Workflow

This planned repository uses the same asset-handling standards as the active decompilation repositories, but no platform, executable format, archive layout, engine, build, region, language set, revision, or resource structure should be assumed until the target is authoritatively identified and verified.

## 1. Verify the target before asset work

Do not begin target-specific extraction or assign platform-specific paths from speculation. Record verified target identity in `VERSIONS.md` first. Unknown fields should remain explicitly `TBD`, `unknown`, or `null`.

## 2. Record the source location

Once a target exists for verified research, track enough provenance to locate each asset again. Depending on the verified architecture, this may include:

- archive or container
- executable or section
- file path
- table, symbol, or record identifier
- index or offset
- extraction tool and command

Do not commit retail ROM images, decrypted game images, console keys, or other redistributable game binaries as source material.

## 3. Preserve reproducible project material

Prefer reconstructed source data, editable metadata, and reproducible extraction/conversion tooling over opaque generated output.

When verified graphics or sprites become part of the work, include a human-viewable representation such as PNG alongside reconstructed/source asset data when practical so changes can be reviewed without specialized tooling.

For other verified asset classes, keep an appropriate reviewable representation when it materially helps inspection and verification.

## 4. Name and organize only verified material

Use stable, descriptive repository paths after the relevant target structure is known. Do not copy a platform-specific asset layout from an earlier generation merely for consistency.

Keep version-, region-, language-, or revision-specific material separate when verified targets actually differ.

## 5. Verify identity before deduplication

Assets that look or sound identical are not automatically identical.

Before deduplicating across verified versions, revisions, or languages, compare bytes or cryptographic hashes when practical. If material is byte-identical:

1. keep one representative copy where practical;
2. record all verified users of that copy in metadata or a manifest;
3. keep target-specific provenance even when the stored asset is shared.

If the data differs, preserve the distinct variants and document the difference.

## 6. Register the asset in a manifest

Use `manifests/` to record identity, provenance, verified target coverage, source location, hashes, generation method, verification level, and shared usage.

`manifests/example.asset-manifest.json` is the reusable starting point. Replace placeholders only with verified information.

Recommended verification values are:

- `Unverified`
- `Observed`
- `Reproduced`
- `Matched`

## 7. Verify the reconstruction

Where practical, verify that committed material can be recreated from documented source material and tooling. Record hashes, comparisons, logs, or other evidence when identity matters.

Do not label an asset `Matched` unless the target is identified and the exact-match criterion is defined and satisfied.

## 8. Commit in reviewable batches

Prefer small, coherent asset batches over very large uploads. A batch should be easy to inspect, compare, and revert independently.

For sprite or graphics work, keep reconstructed/source graphics data, the human-viewable PNG, and the relevant metadata/manifest entry together when practical.

## Review checklist

Before committing an asset batch, check:

- [ ] the target itself is authoritatively identified
- [ ] target identity is recorded in project version documentation
- [ ] source provenance is documented
- [ ] reconstructed/editable source material is retained when practical
- [ ] human-viewable PNGs are included for sprite/graphics work when practical
- [ ] hashes or byte comparison were used before deduplicating
- [ ] distinct verified variants are preserved when they differ
- [ ] manifest entries are updated
- [ ] verification level is accurate
- [ ] no speculative platform/build/resource claims were introduced
- [ ] no retail game images, console keys, or redistributable game binaries are included
- [ ] the batch is small enough to review comfortably

See also `PROJECT_STANDARDS.md`, `VERIFICATION.md`, `REPOSITORY_STRUCTURE.md`, `VERSIONS.md`, and `../manifests/README.md`.
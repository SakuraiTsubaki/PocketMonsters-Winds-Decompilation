# Tools

Local reverse-engineering helpers live here. Tools must operate on researcher-supplied local data and must not embed retail content, console keys, or absolute local paths in committed outputs.

## `inventory_target.py`

Creates a metadata-only JSON inventory for one local target file or extracted target directory.

```bash
python tools/inventory_target.py /path/to/local/target \
  --target-id winds-base-001 \
  --product "Pocket Monsters Winds" \
  --region TBD \
  --language TBD \
  --version TBD \
  --update base \
  --output manifests/local/winds-base-001.json
```

The generated manifest records relative filenames, file sizes, SHA-256 hashes, suffixes, and researcher-supplied version metadata. It omits absolute local paths and skips key files such as `prod.keys`, `title.keys`, and `*.keys`.

## `map_extracted_target.py`

Builds a conservative candidate executable/container map from an already extracted local target directory.

```bash
python tools/map_extracted_target.py /path/to/extracted/target \
  --target-id winds-base-001 \
  --output manifests/local/winds-base-001.executable-map.json
```

This mapper does not decrypt or unpack data. It records relative paths, file sizes, SHA-256 hashes, and the first 16 bytes of candidate files. Filename/extension classifications remain `Unverified` until independently confirmed. Output is designed to conform to `manifests/executable-map.schema.json`.

## Required review before commit

Generated manifests must be reviewed before committing. Confirm that they contain metadata only and do not expose retail payloads, console keys, secrets, or absolute local paths.

## Next tooling milestones

1. Validate target metadata against `manifests/version-inventory.json`.
2. Confirm candidate module/container classifications from direct observation.
3. Add symbol/function mapping formats tied to an exact target hash.
4. Add comparison tooling for Winds/Waves and later revisions.

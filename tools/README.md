# Tools

Local reverse-engineering helpers live here. Tools must operate on researcher-supplied local data and must not embed retail content, console keys, or absolute local paths in committed outputs.

## `inventory_target.py`

Creates a metadata-only JSON inventory for one local target file or extracted target directory.

Example:

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

The generated manifest records relative filenames, file sizes, SHA-256 hashes, suffixes, and researcher-supplied version metadata. It intentionally omits absolute local paths and skips key files such as `prod.keys`, `title.keys`, and `*.keys`.

Do not commit a generated manifest until you have reviewed it and confirmed that it contains metadata only.

## Next tooling milestones

1. Validate target metadata against `manifests/version-inventory.json`.
2. Generate an executable/module inventory from an already extracted local target.
3. Generate a resource/container inventory without embedding resource payloads.
4. Add comparison tooling for Winds/Waves and later revisions.

#!/usr/bin/env python3
"""Build a metadata-only candidate module/container map from an extracted target.

The mapper does not decrypt or unpack anything. It observes local files, hashes
them, records their first bytes, and applies conservative filename/extension
heuristics. Candidate classifications remain Unverified until independently
confirmed.
"""

from __future__ import annotations

import argparse
import hashlib
import json
from datetime import datetime, timezone
from pathlib import Path

CHUNK_SIZE = 1024 * 1024
MAGIC_BYTES = 16
SENSITIVE_FILENAMES = {"prod.keys", "title.keys"}
SENSITIVE_SUFFIXES = {".keys"}
MODULE_SUFFIXES = {".nso", ".nro", ".elf", ".so", ".dll", ".exe"}
CONTAINER_SUFFIXES = {
    ".arc", ".bin", ".bundle", ".dat", ".fs", ".nca", ".pack", ".pak", ".romfs", ".szs"
}
MODULE_NAMES = {"main", "rtld", "sdk"}


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(CHUNK_SIZE), b""):
            digest.update(chunk)
    return digest.hexdigest()


def first_bytes(path: Path) -> str:
    with path.open("rb") as handle:
        return handle.read(MAGIC_BYTES).hex()


def is_sensitive(path: Path) -> bool:
    return path.name.lower() in SENSITIVE_FILENAMES or path.suffix.lower() in SENSITIVE_SUFFIXES


def classify(path: Path) -> str | None:
    name = path.name.lower()
    suffix = path.suffix.lower()
    if suffix in MODULE_SUFFIXES or name in MODULE_NAMES or name.startswith("subsdk"):
        return "module"
    if suffix in CONTAINER_SUFFIXES:
        return "container"
    return None


def record(path: Path, root: Path, kind: str) -> dict:
    return {
        "path": path.relative_to(root).as_posix(),
        "size": path.stat().st_size,
        "sha256": sha256_file(path),
        "format": "unknown",
        "magic_hex": first_bytes(path),
        "verification": "Unverified",
        "notes": [
            f"Candidate {kind} selected by conservative filename/extension heuristic.",
            "File presence and metadata are observed; semantic classification is not yet verified."
        ],
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("root", type=Path, help="Already extracted local target directory")
    parser.add_argument("--target-id", required=True)
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    root = args.root.resolve()
    if not root.is_dir():
        raise SystemExit(f"Expected an extracted directory: {root}")

    modules = []
    containers = []
    omitted_sensitive_files = 0

    for path in sorted(p for p in root.rglob("*") if p.is_file()):
        if is_sensitive(path):
            omitted_sensitive_files += 1
            continue
        kind = classify(path)
        if kind == "module":
            modules.append(record(path, root, kind))
        elif kind == "container":
            containers.append(record(path, root, kind))

    result = {
        "schema_version": 1,
        "target_id": args.target_id,
        "verification": "Observed",
        "generated_at_utc": datetime.now(timezone.utc).isoformat(),
        "modules": modules,
        "containers": containers,
        "notes": [
            "Generated from an already extracted researcher-supplied local target.",
            "Candidate classifications are heuristic and remain Unverified.",
            f"Sensitive files omitted: {omitted_sensitive_files}.",
            "No absolute local paths, key material, or file payloads are embedded."
        ],
    }

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    print(f"Wrote {args.output}: {len(modules)} module candidates, {len(containers)} container candidates")


if __name__ == "__main__":
    main()

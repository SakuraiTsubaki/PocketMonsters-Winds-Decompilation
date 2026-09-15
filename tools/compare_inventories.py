#!/usr/bin/env python3
"""Compare two metadata-only target inventories without reading target payloads."""

from __future__ import annotations

import argparse
import json
from pathlib import Path


def load_inventory(path: Path) -> dict:
    data = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(data, dict) or not isinstance(data.get("files"), list):
        raise SystemExit(f"Not a target inventory with a files array: {path}")
    return data


def by_path(inventory: dict) -> dict[str, dict]:
    result: dict[str, dict] = {}
    for entry in inventory["files"]:
        if not isinstance(entry, dict) or "path" not in entry:
            continue
        result[str(entry["path"])] = entry
    return result


def compact(entry: dict) -> dict:
    return {
        "size": entry.get("size"),
        "sha256": entry.get("sha256"),
        "suffix": entry.get("suffix"),
    }


def compare(left: dict, right: dict) -> dict:
    left_files = by_path(left)
    right_files = by_path(right)
    left_paths = set(left_files)
    right_paths = set(right_files)

    added = [
        {"path": path, **compact(right_files[path])}
        for path in sorted(right_paths - left_paths)
    ]
    removed = [
        {"path": path, **compact(left_files[path])}
        for path in sorted(left_paths - right_paths)
    ]

    changed = []
    unchanged = 0
    for path in sorted(left_paths & right_paths):
        l = left_files[path]
        r = right_files[path]
        if l.get("sha256") == r.get("sha256") and l.get("size") == r.get("size"):
            unchanged += 1
            continue
        changed.append(
            {
                "path": path,
                "left": compact(l),
                "right": compact(r),
            }
        )

    return {
        "schema_version": 1,
        "left_target_id": left.get("target_id"),
        "right_target_id": right.get("target_id"),
        "summary": {
            "added": len(added),
            "removed": len(removed),
            "changed": len(changed),
            "unchanged": unchanged,
        },
        "added": added,
        "removed": removed,
        "changed": changed,
        "notes": [
            "Comparison uses metadata manifests only.",
            "A changed hash proves byte-level difference but does not by itself identify semantic meaning."
        ],
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("left", type=Path)
    parser.add_argument("right", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    result = compare(load_inventory(args.left), load_inventory(args.right))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    summary = result["summary"]
    print(
        f"added={summary['added']} removed={summary['removed']} "
        f"changed={summary['changed']} unchanged={summary['unchanged']}"
    )


if __name__ == "__main__":
    main()

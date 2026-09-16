# Documentation Hub

This directory is the documentation portal for the planned decompilation project. The documentation structure is ready in advance, but no platform, executable format, engine, build, region, language set, revision, or resource layout should be treated as established until it is authoritatively identified and verified.

## Quick links

| Document | Purpose |
| --- | --- |
| [Project Status](PROJECT_STATUS.md) | Planned stage, validation level, and future milestones |
| [Roadmap](ROADMAP.md) | Project phases beginning with authoritative target identification |
| [Version Coverage](VERSIONS.md) | Verified targets only; unknown platform/build/revision information remains TBD |
| [Research Guide](RESEARCH_GUIDE.md) | Evidence and research-recording practices once verified targets exist |
| [Verification Guide](VERIFICATION.md) | Standards for Unverified, Observed, Reproduced, and Matched results |
| [Repository Structure](REPOSITORY_STRUCTURE.md) | Planned source/data/tool layout that must adapt to verified target architecture |
| [Project Standards](PROJECT_STANDARDS.md) | Naming, provenance, manifest, generated-data, and repository-boundary rules |
| [Asset Workflow](ASSET_WORKFLOW.md) | Asset handling only after target identity and resource structure are verified |
| [Analysis Toolchain](TOOLCHAIN.md) | Reproducible reverse-engineering tools and emulator-research environment |
| [Manifest Guide](../manifests/README.md) | Target-aware inventories, hashes, provenance, and shared-asset metadata |
| [Contributing](../CONTRIBUTING.md) | Contribution rules, evidence expectations, commits, and pull-request guidance |

## Planned research areas

Once authoritative target information exists, documentation may grow into `architecture/`, `formats/`, `research/`, `versions/`, and `verification/`. Do not create platform-specific documentation trees from speculation or by copying an earlier generation.

## Recommended documentation flow

1. Authoritatively identify the target and record it in `VERSIONS.md`.
2. Record investigation methods and evidence according to `RESEARCH_GUIDE.md`.
3. Define repository structure from the verified architecture rather than assumptions.
4. Reconstruct source, data, or assets under `PROJECT_STANDARDS.md`.
5. For verified asset work, follow `ASSET_WORKFLOW.md` and register material in `../manifests/`.
6. Apply `VERIFICATION.md` levels only when their evidence requirements are satisfied.
7. Update `PROJECT_STATUS.md` and `ROADMAP.md` as real milestones become available.

## Documentation rules

- Do not make target-specific technical claims before the target is verified.
- Keep unknown platform, build, region, revision, archive, or resource information as `TBD`, `unknown`, or `null`.
- Separate hypotheses from confirmed observations.
- Preserve evidence and provenance for reproducibility.
- Do not copy platform-specific assumptions from another generation merely for consistency.
- Keep retail game images, decrypted game images, console keys, and other redistributable game binaries out of the repository.

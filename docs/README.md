# Documentation Hub

This directory is the documentation portal for the planned decompilation project. The documentation structure is ready in advance, but no platform, executable format, engine, build, region, language set, revision, or resource layout should be treated as established until it is authoritatively identified and verified.

## Quick links

| Document | Purpose |
| --- | --- |
| [Project Status](PROJECT_STATUS.md) | Current stage, validation level, and future milestones |
| [Roadmap](ROADMAP.md) | Project phases beginning with authoritative target identification |
| [Version Coverage](VERSIONS.md) | Verified targets and pre-release public references; unknown build/revision information remains TBD |
| [Public Source Census](research/PUBLIC_SOURCE_CENSUS.md) | Japanese-baseline worldwide public-source census and regional/localization observations |
| [Research Guide](RESEARCH_GUIDE.md) | Evidence, confidence, and research-recording workflow |
| [Verification Guide](VERIFICATION.md) | Standards for Unverified, Observed, Reproduced, and Matched results |
| [Repository Structure](REPOSITORY_STRUCTURE.md) | Planned source, data, asset, tooling, and manifest layout that must adapt to verified target architecture |
| [Project Standards](PROJECT_STANDARDS.md) | Naming, provenance, manifest, generated-data, and repository-boundary rules |
| [Asset Workflow](ASSET_WORKFLOW.md) | Asset handling only after target identity and resource structure are verified |
| [Manifest Guide](../manifests/README.md) | Target-aware inventories, hashes, provenance, and shared-asset metadata |
| [Public Source Registry](../manifests/public-sources.json) | Machine-readable official public-source inventory for the pre-release census |
| [Contributing](../CONTRIBUTING.md) | Contribution rules, evidence expectations, commits, and pull-request guidance |

## Active research area

Authoritative pre-release product information now exists, so `research/` is being used for real public-source census material. This does not establish a retail build, executable layout, archive format, resource structure, or revision identity.

The project uses Japanese official material as the baseline for Winds/Waves public-source research, then compares every official regional/language surface independently. Public-source findings remain distinct from build-level verification.

## Recommended documentation flow

1. Authoritatively identify the target or public reference and record it in `VERSIONS.md`.
2. Record investigation methods and evidence according to `RESEARCH_GUIDE.md`.
3. Define repository structure from verified architecture rather than assumptions.
4. Reconstruct source, data, or assets under `PROJECT_STANDARDS.md` only when target material supports that work.
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

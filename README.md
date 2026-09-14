# Pocket Monsters Winds — Decompilation

![Status](https://img.shields.io/badge/status-pre--release_research-blueviolet)
![Project](https://img.shields.io/badge/project-decompilation-blue)
![ROMs](https://img.shields.io/badge/ROM_binaries-not_included-success)

Planned decompilation and source-reconstruction repository for **Pocket Monsters Winds**.

## 🎯 Goals

- Reconstruct game code and data into readable, editable source form.
- Document executable structures, data formats, scripts, assets, and version differences.
- Keep analysis, tooling, metadata, and documentation reproducible.
- Build a clean foundation for long-term reverse-engineering work.

## 🚧 Status

This repository is currently in its **pre-release public-source research** stage. No retail game image, executable, package, or decrypted game data is available to this project. Current work uses authoritative public information, with Japanese official material as the baseline and worldwide official regional/language material compared against it.

Public promotional information is not treated as retail-build verification. Unknown build identifiers, revisions, hashes, executable formats, internal layouts, and resource structures remain `TBD` or `unknown` until directly verified.

## 🗂️ Planned scope

- Public-source and regional/language census before target builds are available
- Code and executable analysis once authoritative target material exists
- Game data structures
- Scripts and event data
- Graphics and asset metadata
- Audio and resource formats
- Maps and world data
- Tools, notes, manifests, and verification data

## 📌 Repository policy

ROM images and redistributed ROM binaries are **not included**. The repository is intended for reconstructed source, extracted/recreated project data, tooling, analysis, manifests, and documentation.

## 🧭 Roadmap

- [ ] Complete Japanese-baseline worldwide public-source census
- [ ] Establish authoritative retail version/revision inventory when target material becomes available
- [ ] Map executable and data structures
- [ ] Begin source reconstruction
- [ ] Document assets, scripts, and formats
- [ ] Add verification and reproducibility workflow

## 📚 Documentation

| Document | Purpose |
| --- | --- |
| [Project status](docs/PROJECT_STATUS.md) | Current stage, coverage, validation level, and next milestones |
| [Public source census](docs/research/PUBLIC_SOURCE_CENSUS.md) | Japanese-baseline worldwide official-source census and regional/localization observations |
| [Public source registry](manifests/public-sources.json) | Machine-readable official public-source inventory |
| [Roadmap](docs/ROADMAP.md) | Recommended decompilation phases and long-term progression |
| [Version coverage](docs/VERSIONS.md) | Retail target status and pre-release public references |
| [Research guide](docs/RESEARCH_GUIDE.md) | Evidence, confidence, and research-recording workflow |
| [Verification guide](docs/VERIFICATION.md) | Standards for Unverified, Observed, Reproduced, and Matched results |
| [Repository structure](docs/REPOSITORY_STRUCTURE.md) | Intended long-term source, data, asset, tooling, and manifest layout |
| [Documentation hub](docs/README.md) | Entry point for format, executable, script, asset, version, research, and verification notes |

## 🧱 Repository structure

Directories such as `src/`, `include/`, `data/`, `assets/`, `tools/`, and `tests/` should be added only when verified target information or real project material exists. The final layout must follow the verified target architecture rather than a structure copied from another generation.

The existing `docs/research/` and `manifests/` material exists because real public-source research is now being recorded; it does not imply that a retail executable or asset layout has been identified.

See [Repository Structure](docs/REPOSITORY_STRUCTURE.md) for the full organization policy.

## 🔬 Research and verification

Do not assume an executable format, engine, build, revision, archive, or resource layout before it is authoritatively identified. Public-source findings and build/data verification must remain separate. Target-specific findings should clearly distinguish hypotheses from observed, reproduced, or matched build results and should be recorded with supporting evidence.

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for contribution rules, evidence expectations, commit guidance, and pull-request requirements.

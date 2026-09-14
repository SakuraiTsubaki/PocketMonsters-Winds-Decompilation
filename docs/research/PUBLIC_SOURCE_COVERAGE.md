# Public Source Coverage — Pocket Monsters Winds

**Baseline date:** 2026-09-14

This is the coverage ledger for the pre-release public-source census. The goal is not a representative sample. The goal is to identify, review, and record every publicly available official source directly connected to **Pocket Monsters Winds / Pocket Monsters Waves**, using Japanese official material as the baseline and then auditing every official regional and language surface independently.

## Completion rule

The public-source census is **not complete** while an identified official source family, locale, storefront, video publication, social publication, press/newsroom item, or directly connected official partner publication remains unchecked.

A surface may be closed only with one of these states:

- `reviewed` — the source was opened and its relevant information was recorded;
- `duplicate-canonicalized` — the source repeats another official item and is retained as an alias/duplicate with provenance;
- `not-found` — targeted searches found no authoritative page at the research date;
- `unavailable` — a known page is no longer publicly available;
- `blocked` — the surface is public but could not be inspected because of access/indexing restrictions;
- `pending` — discovered but not yet fully reviewed.

`not-found`, `unavailable`, and `blocked` are findings, not permission to silently omit a source family.

## Required source families

| Source family | Required coverage | Current state |
| --- | --- | --- |
| Pokémon Japan product minisite | landing page, Pokémon index, every individual Pokémon page, every news page, linked official material | Active; core pages identified and reviewed |
| The Pokémon Company corporate Japan | press/news releases, corporate media/brand material, linked official announcements | Active |
| GAME FREAK | game announcement, topic indexes, future developer publications | Active |
| Nintendo Japan | topic/news pages, product/store/eShop surfaces when published | Active |
| Pokémon Korea | landing page, every Pokémon page, every news item, official videos and future updates | Active |
| TPC International / Pokemon.com | regional news/editorial pages and official product material | Active |
| Winds/Waves regional minisites | every discoverable official locale endpoint, including locale-specific naming, units, wording, accessibility text and galleries | Active; endpoint census incomplete |
| Nintendo Americas | US, Canada where separately surfaced, Mexico, Brazil, Latin-American country storefronts and future pages | Active; country census incomplete |
| Nintendo Europe | UK/Ireland, France, Belgium, Germany, Austria, Switzerland, Italy, Spain, Netherlands, Portugal, South Africa and other official country surfaces | Active; country census incomplete |
| Nintendo Australia / New Zealand | product pages, eShop metadata, news/hub pages | Active |
| Nintendo Asia | Hong Kong, Taiwan, Philippines, Thailand, Singapore and other official regional surfaces | Active; several endpoints unresolved |
| Official YouTube | Japanese, Korean, English/global and regional uploads, full Pokémon Presents, trailers, making-of videos and later official videos | Active; channel/upload census incomplete |
| Official social media | X, Instagram, TikTok, Facebook and other official Pokémon/Nintendo/GAME FREAK posts directly tied to Winds/Waves | Active; direct-post census incomplete and some platforms are indexing/access restricted |
| Official press/newsrooms | The Pokémon Company / TPCi press releases and newsroom copies | Active; direct TPCi press origin still being traced |
| Directly connected official partners | NHK Symphony Orchestra and other named official collaborators/campaign partners | Active; NHKSO concert/ticket/goods surfaces identified |
| Store/eShop metadata | players, platform, publisher, language list, rating, cloud-save metadata, release metadata, image galleries | Active; region-by-region comparison incomplete |
| Page-change history | revisions, changed wording, added/removed pages, updated metadata, later announcements | Active; continuous |

## Japanese baseline currently identified

The Japanese baseline currently includes the official Pokémon landing page, Pokémon index and individual Pokémon pages, all four currently listed Japanese news items, the Nintendo Japan announcement article, The Pokémon Company corporate Pokémon Presents release, GAME FREAK announcement/index surfaces, and official Japanese Pokémon Presents/trailer publications.

This list is an inventory checkpoint, **not a declaration of completeness**. Newly found historical or newly published Japanese official material is added without overwriting earlier states.

## Regional expansion currently identified

Official surfaces have already been identified in Korean, English (US/Canada/UK/Australia), French (France/Belgium/Canada), German, Italian, European Spanish, Latin-American Spanish, Brazilian Portuguese, Simplified Chinese and Traditional Chinese, plus Nintendo country/storefront surfaces in multiple additional territories.

Regional pages are not treated as interchangeable merely because their game content is similar. Separate URLs, storefront metadata, localized names, units, ratings, legal notices, accessibility descriptions, screenshots/galleries, and service metadata are independently recordable facts.

## Known unresolved coverage

The following remain explicitly open as of the baseline date:

- exhaustive official locale-endpoint enumeration for the Winds/Waves minisite;
- exhaustive Nintendo country/storefront enumeration for both titles;
- direct canonical origin of every TPC International press release related to the announcement;
- direct canonical URLs for every official social-media post across all official accounts;
- complete Instagram/TikTok/Facebook/X publication census where indexing or access is restricted;
- all regional duplicates/reuploads of the announcement trailer and main-theme making-of video;
- every official screenshot/gallery image and its region-specific accessibility description/metadata;
- page revision/change snapshots over time;
- any future announcement, DLC, event, HOME, online, tournament, patch, product or partner material.

## Storage rule

Machine-readable source records are stored under `manifests/`. Analytical findings and comparison results are stored under `docs/research/`. New directories are added only when real material exists, consistent with `../REPOSITORY_STRUCTURE.md`.

Raw retail game binaries, decrypted game images and console keys are not part of this census or repository.

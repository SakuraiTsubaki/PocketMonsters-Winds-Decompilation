# Public Source Census — Pocket Monsters Winds

**Research baseline date:** 2026-09-14

This document records the pre-release public-source census for **Pocket Monsters Winds**. No retail game image, executable, package, build, or decrypted game data is available to this project at this stage.

## Research rule

The Japanese official release is the investigation baseline. Official material from every other region and language is then compared against the Japanese baseline rather than being silently merged into it.

Public website claims are evidence about announced product information, not evidence about an unreleased retail build. Build identifiers, revisions, hashes, executable formats, archive layouts, internal file names, offsets, symbols, and resource structures remain `TBD` or `unknown` until directly verified.

The machine-readable source registry for this census is `../../manifests/public-sources.json`.

## Japanese baseline confirmed from official public sources

As of the baseline date, official Japanese Pokémon, Nintendo, and GAME FREAK material confirms the following public product information:

- Japanese title: **『ポケットモンスター ウインド』**; paired title: **『ポケットモンスター ウェーブ』**.
- The titles were publicly announced on **2026-02-27**.
- A **simultaneous worldwide release in 2027** is planned.
- The announced platform is **Nintendo Switch 2**.
- The official Japanese product page classifies the game as an **RPG**.
- The Japanese product page identifies **The Pokémon Company** as publisher, **Nintendo** as seller, and **GAME FREAK** as developer/creator.
- The announced supported languages are Japanese, English, French, Italian, German, European Spanish, Latin American Spanish, Brazilian Portuguese, Korean, Simplified Chinese, and Traditional Chinese.
- Official descriptions identify an **open world** containing windswept islands and a vast ocean, with Pokémon living in distinct ecosystems and the player teaming up with Pokémon to overcome obstacles and forces of nature.
- The protagonist's outfit is stated to differ between Winds and Waves.
- The Japanese first-partner names currently published are **ハブロウ**, **ポムケン**, and **ミオリー**.
- The Japanese site currently identifies the special Pikachu as **カゼピカくん** and **ナミピカちゃん**.
- The Japanese news index records the first trailer, the NHK Symphony Orchestra main-theme announcement, and the Brazilian Portuguese language announcement on 2026-02-27, plus a main-theme recording making-of video on 2026-05-13.

## Initial regional comparison coverage

This first census batch registers official material from the following public surfaces:

- Japan: Pokémon official site, Nintendo Japan, GAME FREAK.
- Korea: Pokémon Korea landing page, first-partner pages, special-Pikachu page, and supported-language announcement.
- United States / Canada: Pokémon official localized pages and Nintendo US.
- United Kingdom / Australia / New Zealand: Nintendo regional product or eShop pages.
- France, Germany, Italy, European Spanish, Latin American Spanish, and Brazilian Portuguese: official Pokémon localized landing pages.
- Simplified Chinese and Traditional Chinese: official localized pages hosted under the Japanese Pokémon site.
- Philippines and Thailand: Nintendo regional announcement pages.

This is **census batch 0001**, not a declaration that worldwide coverage is complete. Every discovered official regional surface must eventually be checked for unique text, images, product metadata, ratings, store metadata, release details, and later changes.

## Confirmed localization / regional observations

The regional material already demonstrates why each official locale must be preserved independently:

- Game-title localization differs by locale. Examples include French **Pokémon Vents / Pokémon Vagues**, German **Pokémon Wind / Pokémon Welle**, Italian **Pokémon Vento / Pokémon Onda**, European Spanish **Pokémon Viento / Pokémon Oleaje**, Latin American Spanish **Pokémon Viento / Pokémon Ola**, and Brazilian Portuguese **Pokémon Ventos / Pokémon Ondas**.
- First-partner names are not uniform across languages. Japanese uses ハブロウ / ポムケン / ミオリー; English uses Browt / Pombon / Gecqua; French uses Broussatif / Caloulou / Ogéko; Korean uses 초로삐 / 포뭉이 / 미초리.
- Special-Pikachu names are also localized. Japanese uses カゼピカくん / ナミピカちゃん; English uses Mr. Windychu / Ms. Wavychu; Korean uses 바람츄 / 파도츄. Other official locales must be recorded independently rather than inferred from these names.
- The US English Pokémon page presents first-partner height and weight in imperial units, while the Canadian English and several other official regional pages present metric values. This is a presentation/localization difference, not evidence of different underlying Pokémon parameters.
- Brazilian Portuguese support is explicitly announced in the Japanese and Korean official material and a dedicated Brazilian Portuguese official landing page exists.

## Information deliberately not claimed

The following remain unknown or unverified at the build/data level and must not be invented from promotional material:

- retail build or revision identifiers
- cryptographic hashes of game packages or executables
- executable/container/resource formats
- internal file names, paths, IDs, offsets, symbols, or memory addresses
- final map structure or official region name beyond what has actually been announced
- final version-exclusive content beyond explicitly published differences
- final online, save-data, HOME, DLC, patch, or competition behavior unless separately confirmed

## Next census work

1. Complete the official locale/region endpoint inventory and record redirects or region-specific pages.
2. Inventory every official Winds/Waves news item, trailer, product page, store page, and official social/video publication from the 2026-02-27 announcement onward.
3. Build a field-by-field localization matrix for titles, Pokémon names, categories, descriptions, measurements, abilities, protagonist text, and product metadata.
4. Record page-change history rather than replacing older observations when official material changes.
5. Keep `VERSIONS.md` and `PROJECT_STATUS.md` synchronized with verified public information while leaving unavailable build-level data unknown.

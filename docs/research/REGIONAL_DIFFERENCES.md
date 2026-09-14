# Regional Differences — Public Sources

**Research date:** 2026-09-14  
**Target repository:** Pocket Monsters Winds

This document records differences visible in authoritative public sources before release. These are **public-source differences**, not claims about final retail-build differences.

Japanese official material is the baseline. Other regional/language surfaces are preserved independently rather than normalized into the Japanese wording.

## Official title localization observed so far

| Surface | Winds title | Waves title | Status |
| --- | --- | --- | --- |
| Japan | ポケットモンスター ウインド | ポケットモンスター ウェーブ | Official |
| Korea | Pokémon Winds | Pokémon Waves | Official Korean product branding uses the English pair titles on the checked surface |
| English | Pokémon Winds | Pokémon Waves | Official |
| France / French Belgium | Pokémon Vents | Pokémon Vagues | Official |
| French Canada | Pokémon Winds | Pokémon Waves | Official; French page keeps English game titles |
| Germany | Pokémon Wind | Pokémon Welle | Official |
| Italy | Pokémon Vento | Pokémon Onda | Official |
| Spain | Pokémon Viento | Pokémon Oleaje | Official |
| Latin-American Spanish surfaces checked | Pokémon Viento | Pokémon Ola | Official |
| Brazil | Pokémon Ventos | Pokémon Ondas | Official |
| Simplified Chinese | 宝可梦 风 | 宝可梦 波 | Official |
| Traditional Chinese | 寶可夢 風 | 寶可夢 波 | Official |

The matrix is not yet a complete locale inventory. Missing rows remain open until every official locale endpoint is enumerated.

## First-partner localization observed so far

| Surface | Grass | Fire | Water |
| --- | --- | --- | --- |
| Japan | ハブロウ | ポムケン | ミオリー |
| Korea | 초로삐 | 포뭉이 | 미초리 |
| English | Browt | Pombon | Gecqua |
| France / French Belgium / French Canada | Broussatif | Caloulou | Ogéko |
| Germany | Braubel | Pomfifi | Gekkua |
| Italy | Browt | Pombon | Gecqua |
| Spain | Browt | Pombon | Gecqua |
| Latin-American Spanish surfaces checked | Browt | Pombon | Gecqua |
| Brazil | Browt | Pombon | Gecqua |
| Simplified Chinese | 叶眉鸟 | 博姆耿 | 妙澪儿 |
| Traditional Chinese | 葉眉鳥 | 博姆耿 | 妙澪兒 |

French Canada is a notable mixed localization case: the French-language page keeps the English game titles **Pokémon Winds / Pokémon Waves** while using the French localized partner names.

## Special Pikachu names observed so far

| Surface | Winds-associated Pikachu | Waves-associated Pikachu |
| --- | --- | --- |
| Japan | カゼピカくん | ナミピカちゃん |
| Korea | 바람츄 | 파도츄 |
| English | Mr. Windychu | Ms. Wavychu |
| France / French Belgium | Tornachu | Pikaflo |
| Germany | Windchu | Wellchu |
| Italy | Ventochu | Ondachu |
| Latin-American Spanish surface checked | Sr. Vientachu | Sra. Olachu |
| Brazil | Sr. Ventachu | Sra. Ondachu |
| Simplified Chinese | 风风皮卡弟 | 波波皮卡妹 |
| Traditional Chinese | 風風皮卡弟 | 波波皮卡妹 |

Rows are added only after both names are directly verified on an official surface. Unverified or partially seen names are not guessed.

## Measurement-unit presentation

The US English official product site uses imperial display values for Pokémon height/weight, while official Canada/UK/Australia surfaces checked use metric presentation. This is a presentation/localization difference, not a difference in underlying Pokémon parameters.

Examples from official sources:

- US Browt: `1'`, `7.7 lbs.`
- Australia Browt: `0.3 m`, `3.5 kg`

The same canonical Pokémon information is therefore preserved together with the regional display units used by each official surface.

## Save Data Cloud metadata conflict

Official Nintendo regional surfaces currently disagree on Save Data Cloud status:

- Nintendo UK/European game pages checked state that the software **does not support Nintendo Switch Online Save Data Cloud backup**.
- Australia and New Zealand Nintendo eShop entries checked currently state **Support status pending**.
- Hong Kong eShop material previously identified also reports the status as undecided/pending.

This is retained as an unresolved regional/storefront metadata conflict. No attempt is made to infer the final retail behavior before authoritative final information exists.

## Ratings and storefront metadata

Regional storefronts expose different pre-release rating states and metadata conventions:

- European Nintendo pages checked show `PEGI 7 Provisional` on relevant country pages.
- Nintendo US currently directs users to ESRB for rating information rather than providing a final rating on the product page.
- South Africa Nintendo currently shows age rating `TBD` on the checked Winds page.
- Storefront language lists are expressed differently by region; Nintendo US distinguishes American English, Latin American Spanish, Brazilian Portuguese, Simplified Chinese and Traditional Chinese explicitly.

These metadata differences are recorded per storefront and should not be collapsed into one global field without provenance.

## Examples of authoritative surfaces used

- Japan Pokémon: https://www.pokemon.co.jp/ex/winds_waves/ja/
- Simplified Chinese Pokémon: https://www.pokemon.co.jp/ex/winds_waves/sc/
- Traditional Chinese Pokémon: https://www.pokemon.co.jp/ex/winds_waves/tc/
- Korea Pokémon: https://pokemonkorea.co.kr/winds_waves
- US Pokémon: https://windswaves.pokemon.com/en-us/
- French Canada Pokémon: https://windswaves.pokemon.com/fr-ca/
- Brazil Pokémon: https://windswaves.pokemon.com/pt-br/
- France Nintendo Winds: https://www.nintendo.com/fr-fr/Jeux/Jeux-Nintendo-Switch-2/Pokemon-Vents-3039085.html
- Spain Nintendo Winds: https://www.nintendo.com/es-es/Juegos/Juegos-de-Nintendo-Switch-2/Pokemon-Viento-3039085.html
- Italy Nintendo Waves: https://www.nintendo.com/it-it/Giochi/Giochi-per-Nintendo-Switch-2/Pokemon-Onda-3039100.html
- Mexico Nintendo Winds: https://www.nintendo.com/es-mx/store/products/pokemon-winds-switch-2/
- Brazil Nintendo Winds: https://www.nintendo.com/pt-br/store/products/pokemon-winds-switch-2/
- Australia Nintendo eShop Winds: https://ec.nintendo.com/AU/en/titles/70010000122036
- New Zealand Nintendo eShop Waves: https://ec.nintendo.com/NZ/en/titles/70010000122029

## Rule for future entries

A difference is added only when the relevant official surfaces have been directly identified. Translation choices, page omissions, metadata differences, legal wording, screenshots, accessibility descriptions and service-support fields are all valid comparison targets. Public-source differences must remain separate from later retail-build differences unless game data or runtime evidence confirms them.

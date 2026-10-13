# Balatro Croatian Localization (`balatro-croatian`)

Steamodded mod that adds a Croatian (`Hrvatski`) language plus a patched pixel font
with the full Croatian glyph set.

## Layout
- `main.lua` — registers `SMODS.Font` (`croatian_font` → `m6x11plusplus.ttf`) and
  `SMODS.Language { key = 'hr', label = 'Hrvatski' }`.
- `assets/fonts/m6x11plusplus.ttf` — copy of the game's `m6x11plus.ttf` with
  `č ć š ž đ` (and uppercase) added.
- `localization/hr.lua` — Croatian strings (with diacritics).
- `localization/hr-nogl.lua` — same strings transliterated to ASCII (no diacritics).
- `mod.json` — `prefix = "hrv"`.

### Font gotcha (do not regress)
SMODS prefixes object keys with `mod.json`'s `prefix`, so the font is stored as
`hrv_croatian_font`. Always pass the **font object** to `SMODS.Language{ font = ... }`,
never a bare key string, or the language silently falls back to the base font
(which lacks `č/š/ž`).

## Translation glossary

Apply these consistently in `localization/hr.lua` and `localization/hr-nogl.lua`.
Existing keys from the current `hr.lua` are noted where relevant.

| English        | Croatian             | Status   | Notes |
|----------------|----------------------|----------|-------|
| Ante           | **Krug**             | DECIDED  | Replaces current `Ante` (`k_ante`). |
| Ante (caps)    | **KRUG**             | DECIDED  | `k_ante_cap`. |
| Blind          | **Ulog**             | DECIDED  | Poker: the blinds are forced bets. Frees up "Izazov" for the Challenges mode. |
| Small Blind    | Mali ulog            | DECIDED  | |
| Big Blind      | Veliki ulog          | DECIDED  | |
| Boss Blind     | Boss ulog            | DECIDED  | Alt: `Šefov ulog`. |
| Round          | Runda                | existing | `k_round`. Distinct from Ante = Krug. |
| Hand           | Ruka                 | existing | |
| Discard        | Odbaci               | existing | `b_discard`. |
| Chips          | žetoni               | existing | Singular `žeton`. |
| Mult           | **Množina**          | DECIDED  | Replaces `k_mult`. |
| Money          | Novac                | existing | `k_money`. |
| Stake          | **Težina**           | DECIDED  | Difficulty tier chosen per run (Bijeli→Zlatni). Replaces current `ulog` (`b_stake`/`k_stake`). |
| Stake level    | Razina težine        | DECIDED  | `k_stake_level` (was `Razina uloga`). |
| Challenges     | Izazovi              | unchanged| `b_challenges`/`k_challenges` — kept, now that blind = Ulog. |
| Deck           | Špil                 | existing | `b_deck`. |
| Joker          | Džoker / Džokeri     | existing | `k_joker` / `b_jokers`. |
| Tarot          | Tarot                | existing | `k_tarot`. |
| Planet         | Planet               | existing | `k_planet`. |
| Voucher        | Vaučer               | existing | `k_voucher`. |
| Booster Pack   | Booster paket        | existing | `k_booster`, `b_booster_packs`. |
| Endless Mode   | Beskrajni način      | existing | `b_endless`. |

## Word notes
- **Ante** = the group of three blinds before the next shop. Chosen as **Krug**.
- **Blind** = an individual round you must beat (small / big / boss). Chosen as
  **Ulog** — in poker the blinds *are* forced bets (`mali`/`veliki ulog`). This
  frees **Izazov** for the *Challenges* mode, which stays `Izazovi`, so there is
  no overlap.
- **Stake** = the difficulty preset picked per run on the deck-select screen
  (Bijeli → Zlatni). Chosen as **Težina** ("difficulty"). Stake names become
  `[color] težina` — e.g. `Crna težina`, `Zlatna težina`; `k_stake_level` =
  `Razina težine`.
  - Watch the glued phrases from the old `ulog` wording: the sticker text
    `pobjedu na {C:attention}crnom ulogu{} težine` must become
    `pobjedu na {C:attention}crnoj{} težini` (don't leave `težina ... težine`),
    and `Primjenjuje sve prethodne uloge` becomes `Primjenjuje sve prethodne težine`.
- **Ante vs Blind vs Stake vs Round** (distinct!): Krug ⊃ 3 × Ulog; Težina = run
  difficulty; Runda = a played hand cycle. Avoid reusing these roots.

## Localization status
As of the last sync, `hr.lua` has **not** yet been updated to this latest scheme:
- already applied: `Ante → Krug`, `Mult → Množina`
- still to redo: `Blind` is currently `Izazov` (change to `Ulog`), and `Stake` is
  currently `ulog` (change to `Težina`). After editing `hr.lua`, regenerate
  `hr-nogl.lua` by stripping diacritics (`čćšžđČĆŠŽĐ → ccszdCCSZD`) so they stay in sync.

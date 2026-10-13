--- Croatian (Hrvatski) language font setup.
--
-- Balatro ships a pixel font (resources/fonts/m6x11plus.ttf) that only contains
-- a couple of the Croatian glyphs (it has ć and đ, but not č, š or ž). We ship a
-- patched copy of that exact font, m6x11plusplus.ttf, which adds every Croatian
-- letter, and tell the game to use it for the "hr" language.
--
-- IMPORTANT: SMODS prefixes an object's key with the mod's prefix from mod.json
-- (here "hrv"), so the registered font is stored as "hrv_croatian_font". The old
-- code referenced "croatian_font" / "croatian_loc_croatian_font", neither of
-- which exist, so the language silently fell back to the base game font. That is
-- why the accents only appeared in some panels and vanished in the buttons.
-- To avoid that class of bug entirely we hand the *font object itself* to the
-- language instead of a key string.

local croatian_font = SMODS.Font {
    key = 'croatian_font',
    path = 'm6x11plusplus.ttf',
    -- Mirror the metrics of the base game's Latin font (G.FONTS[1]) so the layout
    -- of buttons, cards and panels does not shift.
    render_scale = (G and G.TILESIZE and G.TILESIZE * 10) or 200,
    TEXT_HEIGHT_SCALE = 0.83,
    TEXT_OFFSET = { x = 10, y = -20 },
    FONTSCALE = 0.1,
    squish = 1,
    DESCSCALE = 1,
}

SMODS.Language {
    key = 'hr',
    label = 'Hrvatski',
    font = croatian_font,
}

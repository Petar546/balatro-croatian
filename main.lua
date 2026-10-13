--- @table Croatian Localization Font Mod

-- 1. Formally define your font using Steamodded's Font utility class
SMODS.Font {
    key = "croatian_font",              -- Internal identifier tag
    path = "balatro-hd-v1.ttf",         -- The name of the file inside assets/fonts/
    render_scale = 2.0,                 -- Keeps pixel scaling crisp
    TEXT_HEIGHT_SCALE = 0.8,
    FONTSCALE = 0.12
}

-- 2. Register Croatian as a newly selectable language option slot
SMODS.Language {
    key = 'hr',
    label = 'Hrvatski',                 -- FIXED: "name" changed to "label" to stop the crash
    official = false
}

-- 3. Run the localization loader sequence
function SMODS.current_mod.process_loc_text()
    -- Set your text strings to use your custom font style block
    if SMODS.Fonts['croatian_loc_croatian_font'] then
        G.LANG.font = SMODS.Fonts['croatian_loc_croatian_font']
    end
end

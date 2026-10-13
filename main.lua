--- @table Croatian Language Profile (Automated Setup)

-- 1. Register the custom TTF font engine asset
SMODS.Font {
    key = "croatian_font",              -- Internal registry: croatian_loc_croatian_font
    path = "balatro-hd-v1.ttf",         -- Stored in assets/fonts/
    render_scale = 1.0,                 
    TEXT_HEIGHT_SCALE = 0.83,           
    FONTSCALE = 0.1,
    squish = 1
}

-- 2. Define the language block and assign the font identifier string to it
SMODS.Language {
    key = 'hr',
    label = 'Hrvatski',
    font = 'croatian_loc_croatian_font', 
    official = false
}

-- Leave process_loc_text completely EMPTY. 
-- Steamodded v26 automatically merges localization/hr.lua into memory!

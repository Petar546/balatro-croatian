--- @table Croatian Localization Mod
function SMODS.current_mod.process_loc_text()
    -- 1. Locate the path to your translation file
    local file_path = SMODS.current_mod.path .. "localization/hr.lua"
    
    -- 2. Safely read and execute the Lua translation table
    local chunk, err = loadfile(file_path)
    if chunk then
        local string_table = chunk()
        
        -- 3. Merge your custom text straight into the game's active layout
        for k, v in pairs(string_table) do
            G.localization[k] = G.localization[k] or {}
            for sub_k, sub_v in pairs(v) do
                G.localization[k][sub_k] = sub_v
            end
        end
    else
        sendDebugMessage("Greška pri učitavanju prijevoda: " .. tostring(err))
    end
end

require("Localization.lua")

local localization = Localization:GetLocalization()

-- Get translated phrase by code --
function CryolysisLocalizationUtils:Translate(code)
    return localization[code] or code
end
require("Localization.lua")

local localization = Localization:GetLocalization()

-- Get translated phrase by code --
function LocalizationUtils:Translate(code)
    return localization[code] or code
end
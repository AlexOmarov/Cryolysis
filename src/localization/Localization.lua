------------------------------------------------
-- Localization abstraction --
------------------------------------------------
require "Globals.lua"

function Localization:GetLocalization()
    return LibStub("AceLocale-3.0"):GetLocale(CryolysisData.AppName, true)
end

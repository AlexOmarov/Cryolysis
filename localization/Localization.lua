------------------------------------------------
-- Localization abstraction --
------------------------------------------------
--[[Add new localizations here as required modules]]
require "ruRU.lua"

local L = LibStub("AceLocale-3.0"):GetLocale(CryolysisData.AppName,true)
if not L then return end

L["Cryolysis"] = "Cryolysis";
L["CRYOLYSIS_UNIT_MAGE"] = "Mage";

return L
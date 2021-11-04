local L = require "Localization.lua"

CryolysisConfig = {};
FramePositions = {};
CryolysisData = {};

CryolysisConfig.Panel = {
	L["CONFIG_MESSAGE"],
	L["CONFIG_SPHERE"],
	L["CONFIG_BUTTON"],
	L["CONFIG_MENU"],
	L["CONFIG_TIMER"],
	L["CONFIG_MISC"],
}

CryolysisData.Version = "2.0";
CryolysisData.Author = "Shtil";
CryolysisData.AppName = "Cryolysis";
CryolysisData.Label = CryolysisData.AppName.." "..CryolysisData.Version.." by "..CryolysisData.Author;
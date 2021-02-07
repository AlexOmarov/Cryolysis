local L = require "Localization.lua"

Cryolysis.Config.Panel = {
	L["CONFIG_MESSAGE"],
	L["CONFIG_SPHERE"],
	L["CONFIG_BUTTON"],
	L["CONFIG_MENU"],
	L["CONFIG_TIMER"],
	L["CONFIG_MISC"],
}

CryolysisData = {};
CryolysisData.Version = "1.2.7";
CryolysisData.Author = "Kaeldra";
CryolysisData.AppName = "Cryolysis";
CryolysisData.Label = CryolysisData.AppName.." "..CryolysisData.Version.." by "..CryolysisData.Author;


-- Raccourcis claviers
BINDING_NAME_CRYOLYSISLEFT = "Use Main Cryolysis Button";

BINDING_NAME_EVOCATION = "Use Evocation";
BINDING_NAME_MANASTONELEFT = "Use Mana Gem";
BINDING_NAME_MANASTONERIGHT = "Conjure Mana Gem";

BINDING_NAME_DRINKLEFT = "Use Drink";
BINDING_NAME_DRINKMIDDLE = "Trade Drink";
BINDING_NAME_DRINKRIGHT =  "Conjure Drink";

BINDING_NAME_FOODLEFT = "Use Food";
BINDING_NAME_FOODMIDDLE = "Trade Food";
BINDING_NAME_FOODRIGHT = "Conjure Food";

BINDING_NAME_LASTBUFF = "Recast Last Buff";
BINDING_NAME_LASTPORTAL = "Recast Last Portal";
BINDING_NAME_STEED = "Steed";
BINDING_NAME_HEARTH = "Hearthstone";

BINDING_NAME_LEFTSPELLLEFT = "Left Spell Button: Main Function";
BINDING_NAME_LEFTSPELLRIGHT = "Left Spell Button: Secondary Function";
BINDING_NAME_RIGHTSPELLLEFT = "Right Spell Button: Main Function";
BINDING_NAME_RIGHTSPELLRIGHT = "Right Spell Button: Secondary Function";



BINDING_HEADER_CRYOLYSISLEFT = "Use Main Cryolysis Button";

BINDING_HEADER_EVOCATION = "Use Evocation";
BINDING_HEADER_MANASTONELEFT = "Use Mana Gem";
BINDING_HEADER_MANASTONERIGHT = "Conjure Mana Gem";

BINDING_HEADER_DRINKLEFT = "Use Drink";
BINDING_HEADER_DRINKMIDDLE = "Trade Drink";
BINDING_HEADER_DRINKRIGHT =  "Conjure Drink";

BINDING_HEADER_FOODLEFT = "Use Food";
BINDING_HEADER_FOODMIDDLE = "Trade Food";
BINDING_HEADER_FOODRIGHT = "Conjure Food";

BINDING_HEADER_LASTBUFF = "Recast Last Buff";
BINDING_HEADER_LASTPORTAL = "Recast Last Portal";
BINDING_HEADER_STEED = "Steed";
BINDING_HEADER_HEARTH = "Hearthstone";

BINDING_HEADER_LEFTSPELLLEFT = "Left Spell Button: Main Function";
BINDING_HEADER_LEFTSPELLRIGHT = "Left Spell Button: Secondary Function";
BINDING_HEADER_RIGHTSPELLLEFT = "Right Spell Button: Main Function";
BINDING_HEADER_RIGHTSPELLRIGHT = "Right Spell Button: Secondary Function";

CryolysisConfig = {};
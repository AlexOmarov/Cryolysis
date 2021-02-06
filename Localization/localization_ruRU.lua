------------------------------------------
-- Russaian localization --
------------------------------------------------
print("CryolysisData.AppName: "..CryolysisData.AppName);
local L = LibStub("AceLocale-3.0"):NewLocale(CryolysisData.AppName, "ruRU")
if not L then return end
--
L["Cryolysis"] = "Cryolysis";
L["CRYOLYSIS_UNIT_MAGE"] = "Mage";

-- Word to search for Fire Vulnerability and Winter's chill  first (.+) is the target, second is the spell
L["CRYOLYSIS_DEBUFF_SRCH"] = "(.+) is afflicted by (.+)."
L["CRYOLYSIS_POLY_SRCH"]  = "(.+) fades from (.+)."

function Cryolysis_SpellTableBuild()
	L["CRYOLYSIS_SPELL_TABLE"] = {
	[1] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Усиление магии",			Length = 600,	Type = 0},
	[2] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Чародейская гениальность",		Length = 3600,	Type = 0},
	[3] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Чародейский взрыв",		Length = 0,		Type = 0},
	[4] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Чародейский интеллект",		Length = 1800,	Type = 0},
	[5] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Чародейские снаряды",		Length = 0,		Type = 0},
	[6] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Взрывная волна",			Length = 45,	Type = 3},
	[7] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Скачок",					Length = 15,	Type = 3},
	[8] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Снежная буря",				Length = 0,		Type = 0},
	[9] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Конус холода",			Length = 10,	Type = 3},
	[10] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Сотворение пищи",			Length = 0,		Type = 0},
	[11] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Сотворение воды",			Length = 0,		Type = 0},
	[12] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Антимагия",			Length = 30,	Type = 3},
	[13] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Ослабление магии",			Length = 600,	Type = 0},
	[14] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Огненный взрыв",			Length = 8,		Type = 3},
	[15] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Защита от огня",				Length = 30,	Type = 3},
	[16] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Огненный шар",				Length = 8,		Type = 5},
	[17] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Огненный столб",			Length = 8,		Type = 3},
	[18] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Ледяной доспех",			Length = 300,	Type = 0},
	[19] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Кольцо льда",			Length = 25,	Type = 3},
	[20] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Защита от магии льда",			Length = 30,	Type = 3},
	[21] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Ледяная стрела",				Length = 9,		Type = 5},
	[22] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Морозный доспех",				Length = 300,	Type = 0},
	[23] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Ледяная преграда",			Length = 30,	Type = 3},
	[24] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Магический доспех",			Length = 300,	Type = 0},
	[25] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Щит маны",			Length = 60,	Type = 0},
	[26] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Превращение",				Length = 50,	Type = 2},
	[27] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Портал в Дарнасс",		Length = 0,		Type = 0},
	[28] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Портал в Стальгорн",		Length = 0,		Type = 0},
	[29] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Портал в Штормград",		Length = 0,		Type = 0},
	[30] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Портал в Громовой Утес",	Length = 0,		Type = 0},
	[31] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Портал в Подгород",		Length = 0,		Type = 0},
	[32] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Огненная глыба",				Length = 12,	Type = 5},
	[33] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Снятие малого проклятия",	Length = 0,		Type = 0},
	[34] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Ожог",			Length = 0,			Type = 0},
	[35] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Замедленное падение",				Length = 30,	Type = 0},
	[36] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Телепортация в Дарнасс",	Length = 0,		Type = 0},
	[37] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Телепортация в Стальгорн",	Length = 0,		Type = 0},
	[38] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Телепортация в Оргриммар",	Length = 0,		Type = 0},
	[39] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Телепортация в Громой Утес",	Length = 0,	Type = 0},
	[40] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Телепортация в Подгород",	Length = 0,		Type = 0},
	[41] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Ледяная глыба",			Length = 300,		Type = 3},
	[42] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Холодная хватка",			Length = 600,		Type = 3},
	[43] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Возгорание",			Length = 180,	Type = 3},
	[44] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Присутствие разума",		Length = 180,	Type = 3},
	[45] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil, 
		Name = "Мощь тайной магии",			Length = 180,	Type = 3},
	[46] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Портал в Оргиммар",		Length = 0,		Type = 0},
	[47] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Превращение в свинью",		Length = 50,	Type = 2},
	[48] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Прилив сил",			Length = 480,		Type = 3},
	[49] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Распознавание магии",			Length = 120,	Type = 5},
	[50] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Телепорт в Штормград",		Length = 0,	Type = 0},
	[51] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Превращение в черепаху",		Length = 50,	Type = 2},
	[52] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Обморожение",				Length = 5,		Type = 6},
	[53] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Зимняя стужа",		Length = 15,	Type = 6},
	[54] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Зимняя стужа (2)",	Length = 15,	Type = 6},
	[55] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Зимняя стужа (3)",	Length = 15,	Type = 6},
	[56] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Зимняя стужа (4)",	Length = 15,	Type = 6},
	[57] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Зимняя стужа (5)",	Length = 15,	Type = 6},
	[58] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Улучшенный ожог",	Length = 30,	Type = 6},
    [59] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Улучшенный ожог (2)",Length = 30,	Type = 6},
	[60] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Улучшенный ожог (3)",Length = 30,	Type = 6},
	[61] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Улучшенный ожог (4)",Length = 30,	Type = 6},
	[62] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Улучшенный ожогy (5)",Length = 30,	Type = 6},
	[63] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Самоцвет маны",				Length = 120,	Type = 3},
	[64] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Заморозка",				Length = 5,		Type = 6},
	[65] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Кольцо льда",			Length = 8,		Type = 6},
	[66] = {ID = nil, Rank = nil, CastTime = nil, Mana = nil,
		Name = "Poly Diminished",		Length = 15,	Type = 6},
	};
end
Cryolysis_SpellTableBuild();
-- Type 0 = No Timer
-- Type 1 = Principle permanent timer
-- Type 2 = permanent timer
-- Type 3 = Cooldown Timer
-- Type 4 = Debuff Timer
-- Type 5 = Combat Timer
-- Type 6 = Non-cast debuff.  Not to be removed by normal means
L["CRYOLYSIS_ITEM"] = {
	["LightFeather"] = "Легкое перышко",
	["ArcanePowder"] = "Порошок чар",
	["RuneOfTeleportation"] = "Руна телепортации",
	["RuneOfPortals"] = "Руна порталов",
	["Manastone"] = "Мана",
	["Hearthstone"] = "Камень возвращения",
	["Provision"] = "Conjured",
	["Evocation"] = "Evocation",
	["Drink"] = "Drink",
	["Food"] = "Еда",
};
L["CRYOLYSIS_FOOD_RANK"] = {
	[1] = " Muffin",
	[2] = " Bread",
	[3] = " Rye",
	[4] = " Pumpernickel",
	[5] = " Sourdough",
	[6] = " Sweet Roll", 
	[7] = " Cinnamon Roll",
};
L["CRYOLYSIS_DRINK_RANK"] = {
	[1] = " Сотворенная вода",
	[2] = " Сотворенная свежая вода",
	[3] = " Purified Water",
	[4] = " Сотворенная ключевая вода",
	[5] = " Сотворенная минеральная вода",
	[6] = " Сотворенная шипучка",
	[7] = " Сотворенная талая вода",
};
L["CRYOLYSIS_STONE_RANK"] = {
	[1] = " Агат",		-- Rank Minor
	[2] = " Нефрит",		-- Rank Lesser
	[3] = " Цитрин",	-- Rank Greater
	[4] = " Рубин"		-- Rank Major
};
L["CRYOLYSIS_STONE_RANK2"] = {
	[1] = "Агат",		-- Rank Minor
	[2] = "Нефрит",		-- Rank Lesser
	[3] = "Цитрин",	-- Rank Greater
	[4] = "Рубин"		-- Rank Major
};
L["CRYOLYSIS_MANASTONE_NAMES"] = {
	[1] = "Сотворение агата маны",
	[2] = "Сотворение нефрита маны",
	[3] = "Сотворение цитрина маны",
	[4] = "Сотворение рубина маны"
};
L["CRYOLYSIS_CREATE"] = {
	[1] = "Evocation",
	[2] = "Conjure Mana",
	[3] = "Сотворение воды",
	[4] = "Сотворение пищи"
};
L["CRYOLYSIS_MOUNT_TABLE"] = {
	-- [1] Frostwolf Howler Icon
	{ "Horn of the Frostwolf Howler" }, 
	-- [2] Ram Icon
	{ "Stormpike Battle Charger", "Black Ram", "Black War Ram", "Brown Ram", "Frost Ram", "Gray Ram", "Swift Brown Ram", "Swift Gray Ram", "Swift White Ram", "White Ram", },
	-- [3] Raptor Icon            
	{ "Swift Razzashi Raptor", "Swift Blue Raptor", "Swift Olive Raptor", "Swift Orange Raptor", "Whistle of the Black War Raptor", "Whistle of the Emerald Raptor", "Whistle of the Ivory Raptor", "Whistle of the Mottled Red Raptor", "Whistle of the Turquoise Raptor", "Whistle of the Violet Raptor" },
	-- [4] Yellow Tiger Icon
	{ "Swift Zulian Tiger" },
	-- [5] Undead Horse Icon
	{ "Blue Skeletal Horse", "Blue Skeletal Warhorse", "Deathcharger's Reins", "Brown Skeletal Horse", "Green Skeletal Warhorse", "Purple Skeletal Warhorse", "Red Skeletal Horse", "Red Skeletal Warhorse" },
	-- [6] Mechanostrider Icon
	{ "Black Battlestrider", "Blue Mechanostrider", "Green Mechanostrider", "Icy Blue Mechanostrider Mod A", "Red Mechanostrider", "Swift Green Mechanostrider", "Swift White Mechanostrider", "Swift Yellow Mechanostrider", "Unpainted Mechanostrider", "White Mechanostrider Mod A" },
	-- [7] Brown Horse Icon
	{ "Black Stallion Bridle", "Brown Horse Bridle", "Chestnut Mare Bridle", "Palomino Bridle", "Pinto Bridle", "Swift Brown Steed", "Swift Palomino", "Swift White Steed", "White Stallion Bridle" },
	-- [8] Brown Kodo Icon
	{ "Black War Kodo", "Brown Kodo", "Great Brown Kodo" },
	-- [9] War Steed Icon
	{ "Black War Steed" },
	-- [10] Gray Kodo Icon
	{ "Gray Kodo", "Great Gray Kodo", "Great White Kodo" },
	-- [11] Green Kodo Icon 
	{ "Green Kodo", "Teal Kodo" },
	-- [12] White Wolf Icon    
	{ "Horn of the Arctic Wolf", "Horn of the Dire Wolf", "Horn of the Swift Gray Wolf", "Horn of the Swift Timber Wolf" },
	-- [13] Black Wolf Icon    
	{ "Horn of the Black War Wolf", "Horn of the Brown Wolf", "Horn of the Red Wolf", "Horn of the Swift Brown Wolf", "Horn of the Timber Wolf" },
	-- [14] Black Tiger Icon   
	{ "Reins of the Black War Tiger", "Reins of the Striped Nightsaber" },
	-- [15] White Tiger Icon   
	{ "Reins of the Frostsaber", "Reins of the Nightsaber", "Reins of the Spotted Frostsaber", "Reins of the Striped Frostsaber", "Reins of the Swift Frostsaber", "Reins of the Swift Mistsaber", "Reins of the Swift Stormsaber" },
	-- [16] Red Tiger Icon
	{ "Reins of the Winterspring Frostsaber" },
	-- [17] Black Qiraji Resonating Crystal
	{ "Black Qiraji Resonating Crystal" },
}
L["CRYOLYSIS_MOUNT_PREFIX"] = {
	"Horn of the ",
	"Whistle of the ",
	"Reins of the ",	
}
L["CRYOLYSIS_AQMOUNT_TABLE"] = {
	"Blue Qiraji Resonating Crystal",
 	"Green Qiraji Resonating Crystal",
 	"Red Qiraji Resonating Crystal",
	"Yellow Qiraji Resonating Crystal",
}
L["CRYOLYSIS_AQMOUNT_NAME"]  = {
	"Summon Black Qiraji Tank",
	"Summon Blue Qiraji Tank",
 	"Summon Green Qiraji Tank",
 	"Summon Red Qiraji Tank",
	"Summon Yellow Qiraji Tank",
}
L["CRYOLYSIS_TRANSLATION"] = {
	["Cooldown"] = "Перезадярка",
	["Hearth"] = "Камень возвращения",
	["Rank"] = "Уровень",
	["Invisible"] = "Detect Invisibility",
	["LesserInvisible"] = "Detect Lesser Invisibility",
	["GreaterInvisible"] = "Detect Greater Invisibility",
	["SoulLinkGain"] = "You gain Soul Link.",
	["SacrificeGain"] = "You gain Sacrifice.",
	["SummoningRitual"] = "Ritual of Summoning"
};
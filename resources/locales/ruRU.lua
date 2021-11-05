require "libs\LibStub\LibStub.lua"
require "libs\AceLocale-3.0\AceLocale-3.0.lua"

local L = LibStub("AceLocale-3.0"):NewLocale(CryolysisData.AppName, "ruRU")
if not L then return end

-- Core phrases
L["Cryolysis"] = "Cryolysis";
L["CRYOLYSIS_UNIT_MAGE"] = "Mage";

-- Word to search for Fire Vulnerability and Winter's chill  first (.+) is the target, second is the spell
L["CRYOLYSIS_DEBUFF_SRCH"] = "(.+) is afflicted by (.+)."
L["CRYOLYSIS_POLY_SRCH"]  = "(.+) fades from (.+)."

-- Items
L["CRYOLYSIS_ITEM_LightFeather"] = "Легкое перышко";
L["CRYOLYSIS_ITEM_ArcanePowder"] = "Порошок чар";
L["CRYOLYSIS_ITEM_RuneOfTeleportation"] = "Руна телепортации";
L["CRYOLYSIS_ITEM_RuneOfPortals"] = "Руна порталов";
L["CRYOLYSIS_ITEM_Manastone"] = "Камень маны";
L["CRYOLYSIS_ITEM_Hearthstone"] = "Камень возвращения";
L["CRYOLYSIS_ITEM_Provision"] = "Provision";
L["CRYOLYSIS_ITEM_Evocation"] = "Призыв";
L["CRYOLYSIS_ITEM_Drink"] = "Вода";
L["CRYOLYSIS_ITEM_Food"] = "Еда";

-- Food ranks
L["CRYOLYSIS_FOOD_RANK_1"] = "Muffin";
L["CRYOLYSIS_FOOD_RANK_2"] = "Bread";
L["CRYOLYSIS_FOOD_RANK_3"] = "Rye";
L["CRYOLYSIS_FOOD_RANK_4"] = "Pumpernickel";
L["CRYOLYSIS_FOOD_RANK_5"] = "Sourdough";
L["CRYOLYSIS_FOOD_RANK_6"] = "Sweet Roll";
L["CRYOLYSIS_FOOD_RANK_7"] = "Cinnamon Roll";

-- Drink ranks
L["CRYOLYSIS_DRINK_RANK_1"] = "Вода";
L["CRYOLYSIS_DRINK_RANK_2"] = "Cвежая вода";
L["CRYOLYSIS_DRINK_RANK_3"] = "Очищенная Water";
L["CRYOLYSIS_DRINK_RANK_4"] = "Ключевая вода";
L["CRYOLYSIS_DRINK_RANK_5"] = "Минеральная вода";
L["CRYOLYSIS_DRINK_RANK_6"] = "Шипучка";
L["CRYOLYSIS_DRINK_RANK_7"] = "Талая вода";

-- Stone ranks
L["CRYOLYSIS_STONE_RANK_1"] = "Агат";
L["CRYOLYSIS_STONE_RANK_2"] = "Нефрит";
L["CRYOLYSIS_STONE_RANK_3"] = "Цитрин";
L["CRYOLYSIS_STONE_RANK_4"] = "Рубин";

-- Stone creation spell names
L["CRYOLYSIS_MANASTONE_NAMES_1"] = "Сотворение агата";
L["CRYOLYSIS_MANASTONE_NAMES_2"] = "Сотворение нефрита";
L["CRYOLYSIS_MANASTONE_NAMES_3"] = "Сотворение цитрина";
L["CRYOLYSIS_MANASTONE_NAMES_4"] = "Сотворение рубина";

-- Other Items creation spell names
L["CRYOLYSIS_CREATE_1"] = "Evocation";
L["CRYOLYSIS_CREATE_2"] = "Conjure Mana";
L["CRYOLYSIS_CREATE_3"] = "Сотворение воды";
L["CRYOLYSIS_CREATE_4"] = "Сотворение пищи";


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

L["CRYOLYSIS_TELEPORT_MESSAGE"] = {
	[1] = "I'm heading straight to <portal>! You can't stop the signal!",
	[2] = "Err...something's come up. I've got to be in <portal> like, NOW for another freaking meeting. Stupid 'Mage Meeting' and all that crap.",
	[3] = "Oh look! What's over there! *VANISH* Where'd I go? Buah hahaha. Actually, just look in <portal>, I'll probably be at the repair shop.",
	[4] = "Woohoo! I'm solo flying the <portal> express! Don't you wish you had three free hearthstones?",
	[5] = "PS, since I can 'port to <portal>, my hearth is set in Gadget :P",
	[6] = "Please don't enter my airspace. I'll be leaving for <portal> in about ten seconds.",
	[7] = "I hope I got the spell right self time! Last time, I was trying for <portal> but ended up scattered all over Azeroth!",
	[8] = "10 silver to get to <portal>?!  Well, it's better than waiting an hour",
	[9] = "I can think of two places I'd rather be than here.  Sadly, the most convenient one is <portal>",
};
L["CRYOLYSIS_PORTAL_MESSAGE"] = {
	[1] = "Step right up! Fly the friendly skies of <player>'s Air Service, now departing for <portal>.",
	[2] = "No promises that you'll actually get to <portal> by clicking self. Seriously.",
	[3] = "Chortle chortle, it's a portal!",
	[4] = "<player>'s Air service is proud to be servicing your one-way trip to <portal>. Please remember to close your eyes for the duration because it can be scary as hell.",
	[5] = "DISCLAIMER: I RECEIVED MY PORTAL LICENSE OFF THE AH. CLICK AT YOUR OWN RISK.",
	[6] = "Well, you cooouulllddd click self portal to <portal>, but are you sure you really want to go there? I mean, seriously, <portal>? WTF is wrong with you. Do you know who LIVES there?",
	[7] = "Tired of letting your arms get tired on your long trip back to <portal>? Just click here then, you lazy non-hearthing bums",
	[8] = "Entering through self dimensional gateway will get you to <portal>",
	[9] = "Okay, <player>, focus.  They want to go to <portal>, not the middle of the Maelstrom.  I can do self.. <portal>, not ocean.",
	[10] = "Why go to <portal> when we can bring <portal> here?  Please click the portal to help me summon the city!",
	[11] = "Now opening a portal to Ironforge.  Or was it Orgrimmar? Maybe Stormwind or Thunder bluff? I guess we'll just have to find out!",
	[12] = "Whatever you do, DON'T TOUCH THE PORTAL",
	[13] = "Gateway to hell? Coming right up!",
};
L["CRYOLYSIS_POLY_MESSAGE"] = {
	["Sheep"] = {
		[1] = "<target> has been baaaaaaaaad!",
		[2] = "I'm little bopeep! Don't touch the sheep!",
		[3] = "Sheeping <target>, break it and I break your kneecaps.",
		[4] = "Skies above and oceans deep, <target> is now a sheep!",
		[5] = "Sheeping <target>, DON'T TOUCH MY MUTTON!",
		[6] = "Sheeping <target>! Drop what you're doing and break it! ",
		[7] = "Stay away from <target>, I still need mats for [Wool Socks]",
		[8] = "Okay <target>, repeat after me. Baaaaa",
		[9] = "Sheeping <target>. Everytime you break a sheep, God kills a kitten.",
		[10] = "Polymorphing <target>!  You break it, you tank it.",
		[11] = "<target> is my sheep. There are many others like it but self one is mine.",
		[12] = "Polymorphing <target>, please keep your pants up.",
		[13] = "Baa, Baa, <target>.  Have you any wool?",
		[14] = "Polymorphing <target> because sheep don't say no.",
		[15] = "Polymorph on <target>. Repeated poking may cause explosions",
		[16] = "What's white and fluffy and covered in wool?  <target> of course!",
		[17] = "<target>, have you ever read the works of Franz Kafka?",
		[18] = "How's my sheeping? Call 1-800-BAH-RAM-U",
		[19] = "Bah, <target>",
		[20] = "Polymorph on <target>.  You break it, you buy it.",
		[21] = "Polymorph on *yawn* <target>.  So many sheep... zzzz",
		[22] = "Go deep into your cave, <target>, and find your power animal",
		[23] = "I know how frightening and intimidating mutton can be, but please try to overcome self phobia you have of <target>",

	},
	["Pig"] = {
		[1] = "Sooooo Weeeeee! here Piggy <target>. Dont Steal the Bacon!",
		[2] = "Porking <target>.  Oink! Oink!",
		[3] = "PORKCHOP SANDWICHES!!",
		[4] = "I smell bacon I smell pork, look out <target> I have a fork!",
		[5] = "<target>:  The other white meat.",
		[6] = "That'll do, <target>.  That'll do.",
		[7] = "In space, no one can hear you squeal",
		[8] = "<target>, will you be Mr. Wiggles' friend?",
		[9] = "I think <target> was raised in a barn",
		[10] = "<target>'s new name shall be Comrade Napoleon",
		[11] = "Orsen Wells wants to have a word with you, <target>",
		[12] = "<target> is not kosher!",
		[13] = "Congrats, <target>, you are now the Prince of Denmark!",
		[14] = "self above all: to thine own self be true, And it must follow, as the night the day, Thou canst not then be false to any man.",
		[15] = "Dog's can't tell that <target>'s not bacon.",
		[16] = "<target> makes me want to read Hamlet.",

	},
	["Turtle"] = {
		[1] = "GO SQUIRTLE!",
		[2] = "Slow and steady won't win the race for <target> self time",
		[3] = "Hey <target>, you up for some soup? =D",
		[4] = "GAM-E-RA! GAM-E-RA! <target> is a friend to children everywhere.",
		[5] = "<target> is a hero on the half-shell!",
	},
};
L["CRYOLYSIS_STEED_MESSAGE"] = {
	[1] = "If it wasn't for my <mount>, I wouldn't have spent that year in college.",
	[2] = "The directions said to just add water and... WHOA a <mount>!",
	[3] = "My <mount> ate all my conjured food again!  Better make more...",
};
L["CRYOLYSIS_FREEZE_MESSAGE"] = {
	[1] = "I enjoy my <target>s on the rocks",
	[2] = "Looks like <target> needs to get a sweater!",
	[3] = "<3 Freezing Band",
	[4] = "Take a chill pill, <target>",
	[5] = "That's just cold, <target>.  Just plain cold",
	[6] = "And thats how I killed the dinosaurs",
	[7] = "Why so blue, <target>?",
	[8] = "Enjoy your 'You can't do that while frozen' messages",
	[9] = "Iceberg! Dead ahead!",
	[10] = "I don't know how we're gonna get <target> thawed!",
};
L["CRYOLYSIS_SHORT_MESSAGES"] = {
	[1] = "--> Opening a portal to <portal> <--",
	[2] = "Polymorph ==> <target>",
};

L["CRYOLYSIS_COOLDOWN"] = {
	["Evocation"] = "Evocation Cooldown",
	["Manastone"] = "Mana Gem Cooldown"
};
L["CryolysisTooltipData"] = {
	["Main"] = {
		Label = "|c00FFFFFFCryolysis|r",
		Stone = {
			[true] = "Yes";
			[false] = "No";
		},
		Hellspawn = {
			[true] = "On";
			[false] = "Off";
		},
		["Food"] = "Conjured Food: ",
		["Drink"] = "Conjured Drink: ",
		["RuneOfTeleportation"] = "Teleport Runes: ",
		["RuneOfPortals"] = "Portal Runes: ",
		["ArcanePowder"] = "Arcane Powder: ",
		["LightFeather"] = "Light Feathers: ",
		["Manastone"] = "Mana Gem: ",
	},
	["Alt"] = {
		Left = "Right-click for ",
		Right = "",
	},
	["Soulstone"] = {
		Label = "|c00FF99FFSoulstone|r",
		Text = {"Create","Use","Used","Waiting"}
	},
	["Manastone"] = {
		Label = "|c00FFFFFFMana Gem|r",
		Text = {": Conjure - ",": Restore ", ": Queued", ": Unavailable"}
	},
	["SpellTimer"] = {
		Label = "|c00FFFFFFSpell Durations|r",
		Text = "Cooldowns and Active Spells on the target",
		Right = "Right Click for Hearthstone to "
	},
	["Armor"] = {
		Label = "|c00FFFFFFIce Armor|r"
	},
	["MageArmor"] = {
		Label = "|c00FFFFFFMage Armor|r"
	},
	["ArcaneInt"] = {
		Label = "|c00FFFFFFArcane Intellect|r"
	},
	["ArcaneBrilliance"] = {
		Label = "|c00FFFFFFArcane Brilliance|r"
	},
	["DampenMagic"] = {
		Label = "|c00FFFFFFDampen Magic|r"
	},
	["AmplifyMagic"] = {
		Label = "|c00FFFFFFAmplify Magic|r"
	},
	["SlowFall"] = {
		Label = "|c00FFFFFFSlow Fall|r"
	},
	["FireWard"] = {
		Label = "|c00FFFFFFFire Ward|r"
	},
	["FrostWard"] = {
		Label = "|c00FFFFFFFrost Ward|r"
	},
	["ConjureFood"] = {
		Label = "|c00FFFFFFConjure Food|r"
	},
	["ConjureDrink"] = {
		Label = "|c00FFFFFFConjure Water|r"
	},
	["Evocation"] = {
		Label = "|c00FFFFFFEvocation|r",
		Text = "Use"
	},
	["ColdSnap"] = {
		Label = "|c00FFFFFFCold Snap|r"
	},
	["IceBarrier"] = {
		Label = "|c00FFFFFF"..L["CRYOLYSIS_SPELL_TABLE"][23].Name.."|r"
	},
	["ManaShield"] = {
		Label = "|c00FFFFFF"..L["CRYOLYSIS_SPELL_TABLE"][25].Name.."|r"
	},
	["DetectMagic"] = {
		Label = "|c00FFFFFFDetect Magic|r"
	},
	["RemoveCurse"] = {
		Label = "|c00FFFFFFRemove Lesser Curse|r"
	},
	["Mount"] = {
		Label = "|c00FFFFFFSteed: "
	},
	["Buff"] = {
		Label = "|c00FFFFFFSpell Menu|r\nMiddle-click to keep the menu open"
	},
	["Portal"] = {
		Label = "|c00FFFFFFPortals Menu|r\nMiddle click to keep the menu open"
	},
	["T:Org"] = {
		Label = "|c00FFFFFFTeleport: Orgrimmar|r"
	},
	["T:UC"] = {
		Label = "|c00FFFFFFTeleport: Undercity|r"
	},
	["T:TB"] = {
		Label = "|c00FFFFFFTeleport: Thunder Bluff|r"
	},
	["T:IF"] = {
		Label = "|c00FFFFFFTeleport: Ironforge|r"
	},
	["T:SW"] = {
		Label = "|c00FFFFFFTeleport: Stormwind|r"
	},
	["T:Darn"] = {
		Label = "|c00FFFFFFTeleport: Darnassus|r"
	},
	["P:Org"] = {
		Label = "|c00FFFFFFPortal: Orgrimmar|r"
	},
	["P:UC"] = {
		Label = "|c00FFFFFFPortal: Undercity|r"
	},
	["P:TB"] = {
		Label = "|c00FFFFFFPortal: Thunder Bluff|r"
	},
	["P:IF"] = {
		Label = "|c00FFFFFFPortal: Ironforge|r"
	},
	["P:SW"] = {
		Label = "|c00FFFFFFPortal: Stormwind|r"
	},
	["P:Darn"] = {
		Label = "|c00FFFFFFPortal: Darnassus|r"
	},
	["EvocationCooldown"] = "Right click for fast summon",
	["LastSpell"] = {
		Left = "Right-click to recast ",      -- <--
		Right = "",
	},
	["Food"] = {
		Label = "|c00FFFFFFFood|r",
		Right = "Right-click to conjure",
		Middle = "Middle-click to trade",
	},
	["Drink"] = {
		Label = "|c00FFFFFFDrink|r",
		Right = "Right-click to conjure ",
		Middle = "Middle-click to trade",
	},
};
L["CRYOLYSIS_SOUND"]  = {
	["SheepWarn"] = "Interface\\AddOns\\Cryolysis\\sounds\\Sheep01.mp3",
	["SheepBreak"] = "Interface\\AddOns\\Cryolysis\\sounds\\Sheep02.mp3",
	["PigWarn"] = "Interface\\AddOns\\Cryolysis\\sounds\\Pig01.mp3",
	["PigBreak"] = "Interface\\AddOns\\Cryolysis\\sounds\\Pig02.mp3",
};
L["CRYOLYSIS_MESSAGE"]  = {
	["Error"] = {
		["RuneOfTeleportationNotPresent"] = "You need a Rune of Teleportation to do that!",
		["RuneOfPortals"] = "You need a Rune of Portals to do that !",
		["LightFeatherNotPresent"] = "You need a Light Feather to do that !",
		["ArcanePowderNotPresent"] = "You need Arcane Powder to do that !",
		["NoRiding"] = "You do not have any Steed to ride !",
		["NoFoodSpell"] = "You do not have any Food creation spell",
		["NoDrinkSpell"] = "You do not have any Drink creation spell",
		["NoManaStoneSpell"] = "You do not have any Mana Gem creation spell",
		["NoEvocationSpell"] = "You do not have any Evocation spell",
		["FullMana"] = "You cannot use your Mana Gem since you have full MP",
		["BagAlreadySelect"] = "Error : self bag is already selected.",
		["WrongBag"] = "Error: The number must be between 0 and 4.",
		["BagIsNumber"] = "Error: Please type a number.",
		["NoHearthStone"] = "Error: You do not have a Hearthstone in your inventory",
		["NoFood"] = "Error: You do not have any Conjured Food of the highest rank in your inventory",
		["NoDrink"] = "Error: You do not have any Conjured Drink of the highest rank in your inventory",
		["ManaStoneCooldown"] = "Error: Mana gem currently on cooldown",
		["NoSpell"] = "Error: You do not know that spell",
	},
	["Bag"] = {
		["FullPrefix"] = "Your ",
		["FullSuffix"] = " is full !",
		["FullDestroySuffix"] = " is full; Next food/drink will be destroyed !",
		["SelectedPrefix"] = "You have chosen your ",
		["SelectedSuffix"] = " to keep your food and drink."
	},
	["Interface"] = {
		["Welcome"] = "<white>/cryo to show the setting menu!",
		["TooltipOn"] = "Tooltips turned on" ,
		["TooltipOff"] = "Tooltips turned off",
		["MessageOn"] = "Chat messaging turned on",
		["MessageOff"] = "Chat messaging turned off",
		["MessagePosition"] = "<- System messages by Cryolysis will appear here ->",
		["DefaultConfig"] = "<lightYellow>Default configuration loaded.",
		["UserConfig"] = "<lightYellow>Configuration loaded."
	},
	["Help"] = {
		"/cryo recall -- Center Cryolysis and all buttons in the middle of the screen",
		"/cryo sm -- Replace messages with a short raid-ready version",
		"/cryo decurse -- cast Remove Lesser curse using decursive feature",
		"/cryo poly -- randomly cast between available polymorph spells",
		"/cryo coldblock -- Activate Iceblock or Cold Snap",
		"/cryo reset -- Restore and reload default Cryolysis configurations",
		"/serenity toggle -- hide/show the main serenity sphere",
		"change the spell buttons by adjusting the sliders in the button menu",
	},
	["EquipMessage"] = "Equip ",
	["SwitchMessage"] = " instead of ",
	["Information"] = {
		["PolyWarn"] = "Polymorph is about to break",
		["PolyBreak"] = "Polymorph has broken...",
		["Restock"] = "Purchased ",
	},
};
L["CRYOLYSIS_COLOR_TOOLTIP"] = {
	["Purple"] = "Purple",
	["Blue"] = "Blue",
	["Pink"] = "Pink",
	["Orange"] = "Orange",
	["Turquoise"] = "Turquoise",
	["X"] = "X"
};
L["CRYOLYSIS_CONFIGURATION"] = {
	["Menu1"] = "Inventory Settings",
	["Menu2"] = "Message Settings",
	["Menu3"] = "Button Settings",
	["Menu4"] = "Timer Settings",
	["Menu5"] = "Graphical Settings",
	["MainRotation"] = "Cryolysis Angle Selection",
	["ProvisionMenu"] = "|CFFB700B7I|CFFFF00FFn|CFFFF50FFv|CFFFF99FFe|CFFFFC4FFn|CFFFF99FFt|CFFFF50FFo|CFFFF00FFr|CFFB700B7y :",
	["ProvisionMenu2"] = "|CFFB700B7P|CFFFF00FFr|CFFFF50FFo|CFFFF99FFv|CFFFFC4FFi|CFFFF99FFs|CFFFF50FFi|CFFFF00FFo|CFFB700B7n :",
	["ProvisionMove"] = "Put Food and drink in the selected bag.",
	["ProvisionDestroy"] = "Destroy all new food and drink if the bag is full.",
	["SpellMenu1"] = "|CFFB700B7S|CFFFF00FFp|CFFFF50FFe|CFFFF99FFl|CFFFFC4FFls :",
	["SpellMenu2"] = "|CFFB700B7P|CFFFF00FFl|CFFFF50FFa|CFFFF99FFy|CFFFFC4FFe|CFFFF99FFr :",
	["TimerMenu"] = "|CFFB700B7G|CFFFF00FFr|CFFFF50FFa|CFFFF99FFp|CFFFFC4FFh|CFFFF99FFi|CFFFF50FFc|CFFFF00FFa|CFFB700B7l T|CFFFF00FFi|CFFFF50FFm|CFFFF99FFe|CFFFFC4FFrs :",
	["TimerColor"] = "Show white instead of yellow timer texts",
	["TimerDirection"] = "Timers grow upwards",
	["TranseWarning"] = "Alert me when I enter a Trance State",
	["SpellTime"] = "Turn on the spell durations indicator",
	["AntiFearWarning"] = "Warn me when my target cannot be feared.",
	["GraphicalTimer"] = "Show graphical instead text timers",
	["TranceButtonView"] = "Let me see hidden buttons to drag them.",
	["ButtonLock"] = "Lock the buttons around the Cryolysis Sphere.",
	["MainLock"] = "Lock Cryolysis Sphere.",
	["BagSelect"] = "Selection of Food and drink Container",
	["BuffMenu"] = "Put buff menu on the left",
	["PortalMenu"] = "Put portal menu on the left",
	["STimerLeft"] = "Show timers on the left side of the button",
	["ShowCount"] = "Show item count in Cryolysis",
	["CountType"] = "Event Shown on sphere",
	["Food"] = "Food Threshold",
	["Sound"] = "Activate sounds",
	["ShowMessage"] = "Random Speeches",
	["ShowPortalMessage"] = "Activate random speeches (Portal)",
	["ShowSteedMessage"] = "Activate random speeches (Steed)",
	["ShowPolyMessage"] = "Activate random speeches (Polymorph)",
	["ChatType"] = "Declare Cryolysis messages as system messages",
	["CryolysisSize"] = "Size of the main Cryolysis button",
	["StoneScale"] = "Size of other buttons",
	["PolymorphSize"] = "Size of the Polymorph button",
	["TranseSize"] = "Size of Transe and Anti-fear buttons",
	["Skin"] = "Drink Threshold",
	["ManaStoneOrder"] = "Use self mana gem first",
	["Show"] = {
		["Text"] = "Show Buttons:",
		["Food"] = "Food button",
		["Drink"] = "Drink button",
		["Manastone"] = "Mana Gem button",
		["LeftSpell"] = "Left Spell Button",
		["Evocation"] = "Evocation",
		["RightSpell"] = "Right Spell Button",
		["Steed"] = "Steed",
		["Buff"] = "Spell menu",
		["Portal"] = "Portal menu",
		["Tooltips"] = "Show tooltips",
		["Spelltimer"] = "Spelltimer Button"
	},
	["Text"] = {
		["Text"] = "On Button:",
		["Food"] = "Food Count",
		["Drink"] = "Drink Count",
		["Manastone"] = "Mana Gem Cooldown",
		["Evocation"] = "Evocation Cooldown",
		["Powder"] = "Arcane Powder",
		["Feather"] = "Light Feathers",
		["Rune"] = "Portal Runes",
	},
	["QuickBuff"] = "Open/Close buff menu on mouse-over",
	["Count"] = {
		["None"] = "None",
		["Provision"] = "Food and Drinks",
		["Provision2"] = "Drinks and Food",
		["Health"] = "Current Health",
		["HealthPercent"] = "Health Percent",
		["Mana"] = "Current Mana",
		["ManaPercent"] = "Mana Percent",
		["Manastone"] = "Mana Gem Cooldown",
		["Evocation"] = "Evocation Cooldown",
	},
	["Circle"] = {
		["Text"] = "Event shown on circle",
		["None"] = "None",
		["HP"] = "Hit Points",
		["Mana"] = "Mana",
		["Manastone"] = "Mana Gem Cooldown",
		["Evocation"] = "Evocation cooldown",

	},
	["Button"] = {
		["Text"] = "Main button function",
		["Consume"] = "Eat and Drink",
		["Evocation"] = "Use Evocation",
		["Polymorph"] = "Cast Polymorph",
		["Manastone"] = "Mana Gem",
	},
	["Restock"] = {
		["Restock"] = "Automatically restock my reagents",
		["Confirm"] = "Confirm before any purchase",
	},
	["Polymorph"] = {
		["Warn"] = "Warn me before polymorph breaks",
		["Break"] = "Tell me when polymorph breaks",
	},
	["ButtonText"] = "Show reagent count on buttons",
	["Anchor"] = {
		["Text"] = "Menu anchor point",
		["Above"] = "Above",
		["Center"] = "Center",
		["Below"] = "Below"
	},
	["SpellButton"] = {
		["Armor"] = L["CRYOLYSIS_SPELL_TABLE"][22].Name.."/"..L["CRYOLYSIS_SPELL_TABLE"][24].Name, -- "Ice Armor / Mage Armor"
		["ArcaneInt"] = L["CRYOLYSIS_SPELL_TABLE"][4].Name.."/"..L["CRYOLYSIS_SPELL_TABLE"][2].Name, --"Arcane Int / Arcane Brilliance",
		["DampenMagic"] = L["CRYOLYSIS_SPELL_TABLE"][13].Name.."/"..L["CRYOLYSIS_SPELL_TABLE"][1].Name, -- "Dampen Magic / Amplify Magic",
		["IceBarrier"] = L["CRYOLYSIS_SPELL_TABLE"][23].Name.."/"..L["CRYOLYSIS_SPELL_TABLE"][25].Name, -- "Ice Barrier / Mana Shield",
		["FireWard"] = L["CRYOLYSIS_SPELL_TABLE"][15].Name.."/"..L["CRYOLYSIS_SPELL_TABLE"][20].Name, -- "Fire Ward / Frost Ward",
		["DetectMagic"] = L["CRYOLYSIS_SPELL_TABLE"][50].Name, -- "Detect Magic"
		["RemoveCurse"] = L["CRYOLYSIS_SPELL_TABLE"][33].Name, -- Remove Lesser curse
		["SlowFall"] = L["CRYOLYSIS_SPELL_TABLE"][35].Name, -- Slow Fall
	},
};

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

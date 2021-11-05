require "libs\LibStub\LibStub.lua"
require "libs\AceLocale-3.0\AceLocale-3.0.lua"

local L = LibStub("AceLocale-3.0"):NewLocale(CryolysisData.AppName, "ruRU")
if not L then
    return
end

-- Core phrases
L["Cryolysis"] = "Cryolysis";
L["CRYOLYSIS_UNIT_MAGE"] = "Mage";
L["CRYOLYSIS_SHORT_MESSAGES_1"] = "--> Opening a portal to <portal> <--";
L["CRYOLYSIS_SHORT_MESSAGES_2"] = "Polymorph ==> <target>";

-- Word to search for Fire Vulnerability and Winter's chill  first (.+) is the target; second is the spell
L["CRYOLYSIS_DEBUFF_SRCH"] = "(.+) is afflicted by (.+)."
L["CRYOLYSIS_POLY_SRCH"] = "(.+) fades from (.+)."

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

-- Mounts
L["CRYOLYSIS_MOUNT_1"] = "Horn of the Frostwolf Howler";
L["CRYOLYSIS_MOUNT_2"] = "Ram";
L["CRYOLYSIS_MOUNT_3"] = "Raptor";
L["CRYOLYSIS_MOUNT_4"] = "Swift Zulian Tiger";
L["CRYOLYSIS_MOUNT_5"] = "Skeletal Horse";
L["CRYOLYSIS_MOUNT_6"] = "Mechanostrider";
L["CRYOLYSIS_MOUNT_7"] = "Bridle";
L["CRYOLYSIS_MOUNT_8"] = "Kodo";
L["CRYOLYSIS_MOUNT_9"] = "Steed";
L["CRYOLYSIS_MOUNT_10"] = "Kodo";
L["CRYOLYSIS_MOUNT_11"] = "Kodo";
L["CRYOLYSIS_MOUNT_12"] = "Wolf";
L["CRYOLYSIS_MOUNT_13"] = "Wolf";
L["CRYOLYSIS_MOUNT_14"] = "Tiger";
L["CRYOLYSIS_MOUNT_15"] = "Saber";
L["CRYOLYSIS_MOUNT_16"] = "Tiger";
L["CRYOLYSIS_MOUNT_17"] = "Crystal";

-- Qiraji mounts
L["CRYOLYSIS_AQMOUNT_TABLE_1"] = "Blue Qiraji Resonating Crystal";
L["CRYOLYSIS_AQMOUNT_TABLE_2"] = "Green Qiraji Resonating Crystal";
L["CRYOLYSIS_AQMOUNT_TABLE_3"] = "Red Qiraji Resonating Crystal";
L["CRYOLYSIS_AQMOUNT_TABLE_4"] = "Yellow Qiraji Resonating Crystal";

L["CRYOLYSIS_AQMOUNT_NAME_1"] = "Summon Black Qiraji Tank";
L["CRYOLYSIS_AQMOUNT_NAME_2"] = "Summon Blue Qiraji Tank";
L["CRYOLYSIS_AQMOUNT_NAME_3"] = "Summon Green Qiraji Tank";
L["CRYOLYSIS_AQMOUNT_NAME_4"] = "Summon Red Qiraji Tank";
L["CRYOLYSIS_AQMOUNT_NAME_5"] = "Summon Yellow Qiraji Tank";

L["CRYOLYSIS_TRANSLATION_1"] = "Перезадярка"
L["CRYOLYSIS_TRANSLATION_2"] = "Камень возвращения"
L["CRYOLYSIS_TRANSLATION_3"] = "Уровень"
L["CRYOLYSIS_TRANSLATION_4"] = "Detect Invisibility"
L["CRYOLYSIS_TRANSLATION_5"] = "Detect Lesser Invisibility"
L["CRYOLYSIS_TRANSLATION_6"] = "Detect Greater Invisibility"
L["CRYOLYSIS_TRANSLATION_7"] = "You gain Soul Link."
L["CRYOLYSIS_TRANSLATION_8"] = "You gain Sacrifice."
L["CRYOLYSIS_TRANSLATION_9"] = "Ritual of Summoning"

-- TELEPORT messages
L["CRYOLYSIS_TELEPORT_MESSAGE_1"] = "I'm heading straight to <portal>! You can't stop the signal!";
L["CRYOLYSIS_TELEPORT_MESSAGE_2"] = "Err...something's come up. I've got to be in <portal> like; NOW for another freaking meeting. Stupid 'Mage Meeting' and all that crap.";
L["CRYOLYSIS_TELEPORT_MESSAGE_3"] = "Oh look! What's over there! *VANISH* Where'd I go? Buah hahaha. Actually; just look in <portal>; I'll probably be at the repair shop.";
L["CRYOLYSIS_TELEPORT_MESSAGE_4"] = "Woohoo! I'm solo flying the <portal> express! Don't you wish you had three free hearthstones?";
L["CRYOLYSIS_TELEPORT_MESSAGE_5"] = "PS; since I can 'port to <portal>; my hearth is set in Gadget :P";
L["CRYOLYSIS_TELEPORT_MESSAGE_6"] = "Please don't enter my airspace. I'll be leaving for <portal> in about ten seconds.";
L["CRYOLYSIS_TELEPORT_MESSAGE_7"] = "I hope I got the spell right self time! Last time; I was trying for <portal> but ended up scattered all over Azeroth!";
L["CRYOLYSIS_TELEPORT_MESSAGE_8"] = "10 silver to get to <portal>?!  Well; it's better than waiting an hour";
L["CRYOLYSIS_TELEPORT_MESSAGE_9"] = "I can think of two places I'd rather be than here.  Sadly; the most convenient one is <portal>";

-- Portal messages
L["CRYOLYSIS_PORTAL_MESSAGE_1"] = "Step right up! Fly the friendly skies of <player>'s Air Service; now departing for <portal>.";
L["CRYOLYSIS_PORTAL_MESSAGE_2"] = "No promises that you'll actually get to <portal> by clicking self. Seriously.";
L["CRYOLYSIS_PORTAL_MESSAGE_3"] = "Chortle chortle; it's a portal!";
L["CRYOLYSIS_PORTAL_MESSAGE_4"] = "<player>'s Air service is proud to be servicing your one-way trip to <portal>. Please remember to close your eyes for the duration because it can be scary as hell.";
L["CRYOLYSIS_PORTAL_MESSAGE_5"] = "DISCLAIMER: I RECEIVED MY PORTAL LICENSE OFF THE AH. CLICK AT YOUR OWN RISK.";
L["CRYOLYSIS_PORTAL_MESSAGE_6"] = "Well; you cooouulllddd click self portal to <portal>; but are you sure you really want to go there? I mean; seriously; <portal>? WTF is wrong with you. Do you know who LIVES there?";
L["CRYOLYSIS_PORTAL_MESSAGE_7"] = "Tired of letting your arms get tired on your long trip back to <portal>? Just click here then; you lazy non-hearthing bums";
L["CRYOLYSIS_PORTAL_MESSAGE_8"] = "Entering through self dimensional gateway will get you to <portal>";
L["CRYOLYSIS_PORTAL_MESSAGE_9"] = "Okay; <player>; focus.  They want to go to <portal>; not the middle of the Maelstrom.  I can do self.. <portal>; not ocean.";
L["CRYOLYSIS_PORTAL_MESSAGE_10"] = "Why go to <portal> when we can bring <portal> here?  Please click the portal to help me summon the city!";
L["CRYOLYSIS_PORTAL_MESSAGE_11"] = "Now opening a portal to Ironforge.  Or was it Orgrimmar? Maybe Stormwind or Thunder bluff? I guess we'll just have to find out!";
L["CRYOLYSIS_PORTAL_MESSAGE_12"] = "Whatever you do; DON'T TOUCH THE PORTAL";
L["CRYOLYSIS_PORTAL_MESSAGE_13"] = "Gateway to hell? Coming right up!";

-- POLY messages
L["CRYOLYSIS_POLY_MESSAGE_Sheep_1"] = "<target> has been baaaaaaaaad!";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_2"] = "I'm little bopeep! Don't touch the sheep!";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_3"] = "Sheeping <target>; break it and I break your kneecaps.";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_4"] = "Skies above and oceans deep; <target> is now a sheep!";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_5"] = "Sheeping <target>; DON'T TOUCH MY MUTTON!";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_6"] = "Sheeping <target>! Drop what you're doing and break it! ";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_7"] = "Stay away from <target>; I still need mats for [Wool Socks]";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_8"] = "Okay <target>; repeat after me. Baaaaa";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_9"] = "Sheeping <target>. Everytime you break a sheep; God kills a kitten.";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_10"] = "Polymorphing <target>!  You break it; you tank it.";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_11"] = "<target> is my sheep. There are many others like it but self one is mine.";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_12"] = "Polymorphing <target>; please keep your pants up.";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_13"] = "Baa; Baa; <target>.  Have you any wool?";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_14"] = "Polymorphing <target> because sheep don't say no.";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_15"] = "Polymorph on <target>. Repeated poking may cause explosions";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_16"] = "What's white and fluffy and covered in wool?  <target> of course!";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_17"] = "<target>; have you ever read the works of Franz Kafka?";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_18"] = "How's my sheeping? Call 1-800-BAH-RAM-U";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_19"] = "Bah; <target>";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_20"] = "Polymorph on <target>.  You break it; you buy it.";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_21"] = "Polymorph on *yawn* <target>.  So many sheep... zzzz";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_22"] = "Go deep into your cave; <target>; and find your power animal";
L["CRYOLYSIS_POLY_MESSAGE_Sheep_23"] = "I know how frightening and intimidating mutton can be; but please try to overcome self phobia you have of <target>";

L["CRYOLYSIS_POLY_MESSAGE_Pig_1"] = "Sooooo Weeeeee! here Piggy <target>. Dont Steal the Bacon!";
L["CRYOLYSIS_POLY_MESSAGE_Pig_2"] = "Porking <target>.  Oink! Oink!";
L["CRYOLYSIS_POLY_MESSAGE_Pig_3"] = "PORKCHOP SANDWICHES!!";
L["CRYOLYSIS_POLY_MESSAGE_Pig_4"] = "I smell bacon I smell pork; look out <target> I have a fork!";
L["CRYOLYSIS_POLY_MESSAGE_Pig_5"] = "<target>:  The other white meat.";
L["CRYOLYSIS_POLY_MESSAGE_Pig_6"] = "That'll do; <target>.  That'll do.";
L["CRYOLYSIS_POLY_MESSAGE_Pig_7"] = "In space; no one can hear you squeal";
L["CRYOLYSIS_POLY_MESSAGE_Pig_8"] = "<target>; will you be Mr. Wiggles' friend?";
L["CRYOLYSIS_POLY_MESSAGE_Pig_9"] = "I think <target> was raised in a barn";
L["CRYOLYSIS_POLY_MESSAGE_Pig_10"] = "<target>'s new name shall be Comrade Napoleon";
L["CRYOLYSIS_POLY_MESSAGE_Pig_11"] = "Orsen Wells wants to have a word with you; <target>";
L["CRYOLYSIS_POLY_MESSAGE_Pig_12"] = "<target> is not kosher!";
L["CRYOLYSIS_POLY_MESSAGE_Pig_13"] = "Congrats; <target>; you are now the Prince of Denmark!";
L["CRYOLYSIS_POLY_MESSAGE_Pig_14"] = "self above all: to thine own self be true; And it must follow; as the night the day; Thou canst not then be false to any man.";
L["CRYOLYSIS_POLY_MESSAGE_Pig_15"] = "Dog's can't tell that <target>'s not bacon.";
L["CRYOLYSIS_POLY_MESSAGE_Pig_16"] = "<target> makes me want to read Hamlet.";

L["CRYOLYSIS_POLY_MESSAGE_Turtle_1"] = "GO SQUIRTLE!";
L["CRYOLYSIS_POLY_MESSAGE_Turtle_2"] = "Slow and steady won't win the race for <target> self time";
L["CRYOLYSIS_POLY_MESSAGE_Turtle_3"] = "Hey <target>; you up for some soup? =D";
L["CRYOLYSIS_POLY_MESSAGE_Turtle_4"] = "GAM-E-RA! GAM-E-RA! <target> is a friend to children everywhere.";
L["CRYOLYSIS_POLY_MESSAGE_Turtle_5"] = "<target> is a hero on the half-shell!";

-- Steed messages
L["CRYOLYSIS_STEED_MESSAGE_1"] = "If it wasn't for my <mount>; I wouldn't have spent that year in college.";
L["CRYOLYSIS_STEED_MESSAGE_2"] = "The directions said to just add water and... WHOA a <mount>!";
L["CRYOLYSIS_STEED_MESSAGE_3"] = "My <mount> ate all my conjured food again!  Better make more...";


-- Tooltips
L["CRYOLYSIS_TOOLTIP_Main"] = "|c00FFFFFFCryolysis|r";
L["CRYOLYSIS_TOOLTIP_Food"] = "Conjured Food: ";
L["CRYOLYSIS_TOOLTIP_Drink"] = "Conjured Drink: ";
L["CRYOLYSIS_TOOLTIP_RuneOfTeleportation"] = "Teleport Runes: ";
L["CRYOLYSIS_TOOLTIP_RuneOfPortals"] = "Portal Runes: ";
L["CRYOLYSIS_TOOLTIP_ArcanePowder"] = "Arcane Powder: ";
L["CRYOLYSIS_TOOLTIP_LightFeather"] = "Light Feathers: ";
L["CRYOLYSIS_TOOLTIP_Manastone"] = "Mana Gem: ";
L["CRYOLYSIS_TOOLTIP_Alt"] = "Right-click for ";
L["CRYOLYSIS_TOOLTIP_Soulstone"] = "|c00FF99FFSoulstone|r";
L["CRYOLYSIS_TOOLTIP_Manastone"] = "|c00FFFFFFMana Gem|r";
L["CRYOLYSIS_TOOLTIP_SpellTimer_Label"] = "|c00FFFFFFSpell Durations|r";
L["CRYOLYSIS_TOOLTIP_SpellTimer_Text"] = "Cooldowns and Active Spells on the target";
L["CRYOLYSIS_TOOLTIP_SpellTimer_Right"] = "Right Click for Hearthstone to ";
L["CRYOLYSIS_TOOLTIP_SpellTimer"] = "|c00FFFFFFSpell Durations|r";
L["CRYOLYSIS_TOOLTIP_Armor"] = "|c00FFFFFFIce Armor|r";
L["CRYOLYSIS_TOOLTIP_MageArmor"] = "|c00FFFFFFMage Armor|r";
L["CRYOLYSIS_TOOLTIP_ArcaneInt"] = "|c00FFFFFFArcane Intellect|r";
L["CRYOLYSIS_TOOLTIP_ArcaneBrilliance"] = "|c00FFFFFFArcane Brilliance|r";
L["CRYOLYSIS_TOOLTIP_DampenMagic"] = "|c00FFFFFFDampen Magic|r";
L["CRYOLYSIS_TOOLTIP_AmplifyMagic"] = "|c00FFFFFFAmplify Magic|r";
L["CRYOLYSIS_TOOLTIP_SlowFall"] = "|c00FFFFFFSlow Fall|r";
L["CRYOLYSIS_TOOLTIP_FireWard"] = "|c00FFFFFFFire Ward|r";
L["CRYOLYSIS_TOOLTIP_FrostWard"] = "|c00FFFFFFFrost Ward|r";
L["CRYOLYSIS_TOOLTIP_ConjureFood"] = "|c00FFFFFFConjure Food|r";
L["CRYOLYSIS_TOOLTIP_ConjureDrink"] = "|c00FFFFFFConjure Food|r";
L["CRYOLYSIS_TOOLTIP_Evocation_Label"] = "|c00FFFFFFEvocation|r";
L["CRYOLYSIS_TOOLTIP_Evocation_Text"] = "Use";
L["CRYOLYSIS_TOOLTIP_ColdSnap"] = "|c00FFFFFFCold Snap|r";
L["CRYOLYSIS_TOOLTIP_IceBarrier"] = "|c00FFFFFFIce barrier|r";
L["CRYOLYSIS_TOOLTIP_ManaShield"] = "|c00FFFFFFMana shield|r";
L["CRYOLYSIS_TOOLTIP_DetectMagic"] = "|c00FFFFFFDetect Magic|r";
L["CRYOLYSIS_TOOLTIP_RemoveCurse"] = "|c00FFFFFFRemove Lesser Curse|r";
L["CRYOLYSIS_TOOLTIP_Mount"] = "|c00FFFFFFSteed: ";
L["CRYOLYSIS_TOOLTIP_Buff"] = "|c00FFFFFFSpell Menu|r\nMiddle-click to keep the menu open";
L["CRYOLYSIS_TOOLTIP_Portal"] = "|c00FFFFFFPortals Menu|r\nMiddle click to keep the menu open";
L["CRYOLYSIS_TOOLTIP_TeleportOrgrimmar"] = "|c00FFFFFFTeleport: Orgrimmar|r";
L["CRYOLYSIS_TOOLTIP_TeleportUndercity"] = "|c00FFFFFFTeleport: Undercity|r";
L["CRYOLYSIS_TOOLTIP_TeleportThunderBluff"] = "|c00FFFFFFTeleport: Thunder Bluff|r";
L["CRYOLYSIS_TOOLTIP_TeleportIronforge"] = "|c00FFFFFFTeleport: Ironforge|r";
L["CRYOLYSIS_TOOLTIP_TeleportStormwind"] = "|c00FFFFFFTeleport: Stormwind|r";
L["CRYOLYSIS_TOOLTIP_TeleportDarnassus"] = "|c00FFFFFFTeleport: Darnassus|r";
L["CRYOLYSIS_TOOLTIP_PortalOrgrimmar"] = "|c00FFFFFFPortal: Orgrimmar|r";
L["CRYOLYSIS_TOOLTIP_PortalUndercity"] = "|c00FFFFFFPortal: Undercity|r";
L["CRYOLYSIS_TOOLTIP_PortalThunderBluff"] = "|c00FFFFFFPortal: Thunder Bluff|r";
L["CRYOLYSIS_TOOLTIP_PortalIronforge"] = "|c00FFFFFFPortal: Ironforge|r";
L["CRYOLYSIS_TOOLTIP_PortalStormwind"] = "|c00FFFFFFPortal: Stormwind|r";
L["CRYOLYSIS_TOOLTIP_PortalDarnassus"] = "|c00FFFFFFPortal: Darnassus|r";
L["CRYOLYSIS_TOOLTIP_EvocationCooldown"] = "Right click for fast summon";
L["CRYOLYSIS_TOOLTIP_LastSpell"] = "Right click for fast summon";
L["CRYOLYSIS_TOOLTIP_Food_Label"] = "|c00FFFFFFFood|r";
L["CRYOLYSIS_TOOLTIP_Food_Right"] = "Right-click to conjure";
L["CRYOLYSIS_TOOLTIP_Food_Middle"] = "Middle-click to trade";
L["CRYOLYSIS_TOOLTIP_Drink_Label"] = "|c00FFFFFFDrink|r";
L["CRYOLYSIS_TOOLTIP_Drink_Right"] = "Right-click to conjure ";
L["CRYOLYSIS_TOOLTIP_Drink_Middle"] = "Middle-click to trade";

-- Action tooltips
L["CryolysisTooltipData_Create"] = "Create";
L["CryolysisTooltipData_Use"] = "Use";
L["CryolysisTooltipData_Used"] = "Used";
L["CryolysisTooltipData_Waiting"] = "Waiting";
L["CryolysisTooltipData_Conjure"] = "Conjure";
L["CryolysisTooltipData_Restore"] = "Restore";
L["CryolysisTooltipData_Queued"] = "Queued";
L["CryolysisTooltipData_Unavailable"] = "Unavailable";

-- Errors
L["CRYOLYSIS_MESSAGE_ERROR_RuneOfTeleportationNotPresent"] = "You need a Rune of Teleportation to do that!";
L["CRYOLYSIS_MESSAGE_ERROR_RuneOfPortals"] = "You need a Rune of Portals to do that !";
L["CRYOLYSIS_MESSAGE_ERROR_LightFeatherNotPresent"] = "You need a Light Feather to do that !";
L["CRYOLYSIS_MESSAGE_ERROR_ArcanePowderNotPresent"] = "You need Arcane Powder to do that !";
L["CRYOLYSIS_MESSAGE_ERROR_NoRiding"] = "You do not have any Steed to ride !";
L["CRYOLYSIS_MESSAGE_ERROR_NoFoodSpell"] = "You do not have any Food creation spell";
L["CRYOLYSIS_MESSAGE_ERROR_NoDrinkSpell"] = "You do not have any Drink creation spell";
L["CRYOLYSIS_MESSAGE_ERROR_NoManaStoneSpell"] = "You do not have any Mana Gem creation spell";
L["CRYOLYSIS_MESSAGE_ERROR_NoEvocationSpell"] = "You do not have any Evocation spell";
L["CRYOLYSIS_MESSAGE_ERROR_FullMana"] = "You cannot use your Mana Gem since you have full MP";
L["CRYOLYSIS_MESSAGE_ERROR_BagAlreadySelect"] = "Error : self bag is already selected.";
L["CRYOLYSIS_MESSAGE_ERROR_WrongBag"] = "Error: The number must be between 0 and 4.";
L["CRYOLYSIS_MESSAGE_ERROR_BagIsNumber"] = "Error: Please type a number.";
L["CRYOLYSIS_MESSAGE_ERROR_NoHearthStone"] = "Error: You do not have a Hearthstone in your inventory";
L["CRYOLYSIS_MESSAGE_ERROR_NoFood"] = "Error: You do not have any Conjured Food of the highest rank in your inventory";
L["CRYOLYSIS_MESSAGE_ERROR_NoDrink"] = "Error: You do not have any Conjured Drink of the highest rank in your inventory";
L["CRYOLYSIS_MESSAGE_ERROR_ManaStoneCooldown"] = "Error: Mana gem currently on cooldown";
L["CRYOLYSIS_MESSAGE_ERROR_NoSpell"] = "Error: You do not know that spell";
L["CRYOLYSIS_MESSAGE_ERROR_Bag"] = "Your bag is full. Next food/drink will be destroyed!";
L["CRYOLYSIS_MESSAGE_INTERFACE_Welcome"] = "/cryo to show the setting menu!";
L["CRYOLYSIS_MESSAGE_INTERFACE_TooltipOn"] = "Tooltips turned on";
L["CRYOLYSIS_MESSAGE_INTERFACE_TooltipOn"] = "Tooltips turned off";
L["CRYOLYSIS_MESSAGE_INTERFACE_TooltipOff"] = "Tooltips turned off";
L["CRYOLYSIS_MESSAGE_INTERFACE_MessageOn"] = "Chat messaging turned on";
L["CRYOLYSIS_MESSAGE_INTERFACE_MessageOff"] = "Chat messaging turned off";
L["CRYOLYSIS_MESSAGE_INTERFACE_MessagePosition"] = "<- System messages by Cryolysis will appear here ->";
L["CRYOLYSIS_MESSAGE_INTERFACE_DefaultConfig"] = "<lightYellow>Default configuration loaded.";
L["CRYOLYSIS_MESSAGE_INTERFACE_UserConfig"] = "<lightYellow>Configuration loaded.";
L["CRYOLYSIS_MESSAGE_HELP_Recall"] = "/cryo recall -- Center Cryolysis and all buttons in the middle of the screen";
L["CRYOLYSIS_MESSAGE_HELP_Sm"] = "/cryo sm -- Replace messages with a short raid-ready version";
L["CRYOLYSIS_MESSAGE_HELP_Decurse"] = "/cryo decurse -- cast Remove Lesser curse using decursive feature";
L["CRYOLYSIS_MESSAGE_HELP_Poly"] = "/cryo poly -- randomly cast between available polymorph spells";
L["CRYOLYSIS_MESSAGE_HELP_Poly"] = "/cryo poly -- randomly cast between available polymorph spells";
L["CRYOLYSIS_MESSAGE_HELP_Coldblock"] = "/cryo coldblock -- Activate Iceblock or Cold Snap";
L["CRYOLYSIS_MESSAGE_HELP_Reset"] = "/cryo reset -- Restore and reload default Cryolysis configurations";
L["CRYOLYSIS_MESSAGE_HELP_Toggle"] = "/serenity toggle -- hide/show the main serenity sphere";
L["CRYOLYSIS_MESSAGE_HELP_Sliders"] = "change the spell buttons by adjusting the sliders in the button menu";
L["CRYOLYSIS_MESSAGE_EquipMessage"] = "Equip ";
L["CRYOLYSIS_MESSAGE_SwitchMessage"] = " instead of ";
L["CRYOLYSIS_MESSAGE_INFORMATION_PolyWarn"] = "Polymorph is about to break";
L["CRYOLYSIS_MESSAGE_INFORMATION_PolyBreak"] = "Polymorph has broken...";
L["CRYOLYSIS_MESSAGE_INFORMATION_Restock"] = "Purchased ";

-- Config
L["CRYOLYSIS_CONFIGURATION_Menu1"] = "Inventory Settings";

L["CRYOLYSIS_CONFIGURATION_Menu1"] = "Inventory Settings";
L["CRYOLYSIS_CONFIGURATION_Menu2"]= "Message Settings";
L["CRYOLYSIS_CONFIGURATION_Menu3"] = "Button Settings";
L["CRYOLYSIS_CONFIGURATION_Menu4"] = "Timer Settings";
L["CRYOLYSIS_CONFIGURATION_Menu5"]= "Graphical Settings";
L["CRYOLYSIS_CONFIGURATION_MainRotation"] = "Cryolysis Angle Selection";
L["CRYOLYSIS_CONFIGURATION_ProvisionMenu"] = "|CFFB700B7I|CFFFF00FFn|CFFFF50FFv|CFFFF99FFe|CFFFFC4FFn|CFFFF99FFt|CFFFF50FFo|CFFFF00FFr|CFFB700B7y :";
L["CRYOLYSIS_CONFIGURATION_ProvisionMenu2"] = "|CFFB700B7P|CFFFF00FFr|CFFFF50FFo|CFFFF99FFv|CFFFFC4FFi|CFFFF99FFs|CFFFF50FFi|CFFFF00FFo|CFFB700B7n :";
L["CRYOLYSIS_CONFIGURATION_ProvisionMove"] = "Put Food and drink in the selected bag.";
L["CRYOLYSIS_CONFIGURATION_ProvisionDestroy"] = "Destroy all new food and drink if the bag is full.";
L["CRYOLYSIS_CONFIGURATION_SpellMenu1"] = "|CFFB700B7S|CFFFF00FFp|CFFFF50FFe|CFFFF99FFl|CFFFFC4FFls :";
L["CRYOLYSIS_CONFIGURATION_SpellMenu2"] = "|CFFB700B7P|CFFFF00FFl|CFFFF50FFa|CFFFF99FFy|CFFFFC4FFe|CFFFF99FFr :";
L["CRYOLYSIS_CONFIGURATION_TimerMenu"] = "|CFFB700B7G|CFFFF00FFr|CFFFF50FFa|CFFFF99FFp|CFFFFC4FFh|CFFFF99FFi|CFFFF50FFc|CFFFF00FFa|CFFB700B7l T|CFFFF00FFi|CFFFF50FFm|CFFFF99FFe|CFFFFC4FFrs :";
L["CRYOLYSIS_CONFIGURATION_TimerColor"] = "Show white instead of yellow timer texts";
L["CRYOLYSIS_CONFIGURATION_TimerDirection"] = "Timers grow upwards";
L["CRYOLYSIS_CONFIGURATION_TranseWarning"] = "Alert me when I enter a Trance State";
L["CRYOLYSIS_CONFIGURATION_SpellTime"] = "Turn on the spell durations indicator";
L["CRYOLYSIS_CONFIGURATION_AntiFearWarning"] = "Warn me when my target cannot be feared.";
L["CRYOLYSIS_CONFIGURATION_GraphicalTimer"] = "Show graphical instead text timers";
L["CRYOLYSIS_CONFIGURATION_TranceButtonView"] = "Let me see hidden buttons to drag them.";
L["CRYOLYSIS_CONFIGURATION_ButtonLock"] = "Lock the buttons around the Cryolysis Sphere.";
L["CRYOLYSIS_CONFIGURATION_MainLock"] = "Lock Cryolysis Sphere.";
L["CRYOLYSIS_CONFIGURATION_BagSelect"] = "Selection of Food and drink Container";
L["CRYOLYSIS_CONFIGURATION_BuffMenu"] = "Put buff menu on the left";
L["CRYOLYSIS_CONFIGURATION_PortalMenu"] = "Put portal menu on the left";
L["CRYOLYSIS_CONFIGURATION_STimerLeft"] = "Show timers on the left side of the button";
L["CRYOLYSIS_CONFIGURATION_ShowCount"] = "Show item count in Cryolysis";
L["CRYOLYSIS_CONFIGURATION_CountType"] = "Event Shown on sphere";
L["CRYOLYSIS_CONFIGURATION_Food"] = "Food Threshold";
L["CRYOLYSIS_CONFIGURATION_Sound"] = "Activate sounds";
L["CRYOLYSIS_CONFIGURATION_ShowMessage"] = "Random Speeches";
L["CRYOLYSIS_CONFIGURATION_ShowPortalMessage"] = "Activate random speeches (Portal)";
L["CRYOLYSIS_CONFIGURATION_ShowSteedMessage"] = "Activate random speeches (Steed)";
L["CRYOLYSIS_CONFIGURATION_ShowPolyMessage"] = "Activate random speeches (Polymorph)";
L["CRYOLYSIS_CONFIGURATION_ChatType"] = "Declare Cryolysis messages as system messages";
L["CRYOLYSIS_CONFIGURATION_CryolysisSize"] = "Size of the main Cryolysis button";
L["CRYOLYSIS_CONFIGURATION_StoneScale"] = "Size of other buttons";
L["CRYOLYSIS_CONFIGURATION_PolymorphSize"] = "Size of the Polymorph button";
L["CRYOLYSIS_CONFIGURATION_TranseSize"] = "Size of Transe and Anti-fear buttons";
L["CRYOLYSIS_CONFIGURATION_Skin"] = "Drink Threshold";
L["CRYOLYSIS_CONFIGURATION_ManaStoneOrder"] = "Use self mana gem first";

L["CRYOLYSIS_CONFIGURATION_ManaStoneOrder"] = "Use self mana gem first";

-- Config
L["CRYOLYSIS_CONFIGURATION_SHOW_Text"] = "Show Buttons:";
L["CRYOLYSIS_CONFIGURATION_SHOW_Food"] = "Food button";
L["CRYOLYSIS_CONFIGURATION_SHOW_Drink"] = "Drink button";
L["CRYOLYSIS_CONFIGURATION_SHOW_Manastone"] = "Mana Gem button";
L["CRYOLYSIS_CONFIGURATION_SHOW_LeftSpell"] = "Left Spell Button";
L["CRYOLYSIS_CONFIGURATION_SHOW_Evocation"] = "Evocation";
L["CRYOLYSIS_CONFIGURATION_SHOW_RightSpell"] = "Right Spell Button";
L["CRYOLYSIS_CONFIGURATION_SHOW_Steed"]  = "Steed";
L["CRYOLYSIS_CONFIGURATION_SHOW_Buff"] = "Spell menu";
L["CRYOLYSIS_CONFIGURATION_SHOW_Portal"] = "Portal menu";
L["CRYOLYSIS_CONFIGURATION_SHOW_Tooltips"] = "Show tooltips";
L["CRYOLYSIS_CONFIGURATION_SHOW_Spelltimer"] = "Spelltimer Button";

L["CRYOLYSIS_CONFIGURATION_TEXT_Text"] = "On Button:";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_Armor"] = "Ice Armor / Mage Armor";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_ArcaneInt"] = "Arcane Int / Arcane Brilliance";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_DampenMagic"] = "Dampen Magic / Amplify Magic";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_IceBarrier"] = "Ice Barrier / Mana Shield";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_FireWard"] = "Fire Ward / Frost Ward";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_DetectMagic"] = "Detect Magic";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_RemoveCurse"] = "Remove Lesser curse";
L["CRYOLYSIS_CONFIGURATION_SPELLBUTTON_SlowFall"] = "Slow Fall";

-- Spell table
L["CRYOLYSIS_SPELL_TABLE_1"] = "Усиление магии";
L["CRYOLYSIS_SPELL_TABLE_2"] = "Чародейская гениальность";
L["CRYOLYSIS_SPELL_TABLE_3"] = "Чародейский взрыв";
L["CRYOLYSIS_SPELL_TABLE_4"] = "Чародейский интеллект";
L["CRYOLYSIS_SPELL_TABLE_5"] = "Чародейские снаряды";
L["CRYOLYSIS_SPELL_TABLE_6"] = "Взрывная волна";
L["CRYOLYSIS_SPELL_TABLE_7"] = "Скачок";
L["CRYOLYSIS_SPELL_TABLE_8"] = "Снежная буря";
L["CRYOLYSIS_SPELL_TABLE_9"] = "Конус холода";
L["CRYOLYSIS_SPELL_TABLE_10"] = "Сотворение пищи";
L["CRYOLYSIS_SPELL_TABLE_11"] = "Сотворение воды";
L["CRYOLYSIS_SPELL_TABLE_12"] = "Антимагия";
L["CRYOLYSIS_SPELL_TABLE_13"] = "Ослабление магии";
L["CRYOLYSIS_SPELL_TABLE_14"] = "Огненный взрыв";
L["CRYOLYSIS_SPELL_TABLE_15"] = "Защита от огня";
L["CRYOLYSIS_SPELL_TABLE_16"] = "Огненный шар";
L["CRYOLYSIS_SPELL_TABLE_17"] = "Огненный столб";
L["CRYOLYSIS_SPELL_TABLE_18"] = "Ледяной доспех";
L["CRYOLYSIS_SPELL_TABLE_19"] = "Кольцо льда";
L["CRYOLYSIS_SPELL_TABLE_20"] = "Защита от магии льда";
L["CRYOLYSIS_SPELL_TABLE_21"] = "Ледяная стрела";
L["CRYOLYSIS_SPELL_TABLE_22"] = "Морозный доспех";
L["CRYOLYSIS_SPELL_TABLE_23"] = "Ледяная преграда";
L["CRYOLYSIS_SPELL_TABLE_24"] = "Магический доспех";
L["CRYOLYSIS_SPELL_TABLE_25"] = "Щит маны";
L["CRYOLYSIS_SPELL_TABLE_26"] = "Превращение";
L["CRYOLYSIS_SPELL_TABLE_27"] = "Портал в Дарнасс";
L["CRYOLYSIS_SPELL_TABLE_28"] = "Портал в Стальгорн";
L["CRYOLYSIS_SPELL_TABLE_29"] = "Портал в Штормград";
L["CRYOLYSIS_SPELL_TABLE_30"] = "Портал в Громовой Утес";
L["CRYOLYSIS_SPELL_TABLE_31"] = "Портал в Подгород";
L["CRYOLYSIS_SPELL_TABLE_32"] = "Огненная глыба";
L["CRYOLYSIS_SPELL_TABLE_33"] = "Снятие малого проклятия";
L["CRYOLYSIS_SPELL_TABLE_34"] = "Ожог";
L["CRYOLYSIS_SPELL_TABLE_35"] = "Замедленное падение";
L["CRYOLYSIS_SPELL_TABLE_36"] = "Телепортация в Дарнасс";
L["CRYOLYSIS_SPELL_TABLE_37"] = "Телепортация в Стальгорн";
L["CRYOLYSIS_SPELL_TABLE_38"] = "Телепортация в Оргриммар";
L["CRYOLYSIS_SPELL_TABLE_39"] = "Телепортация в Громой Утес";
L["CRYOLYSIS_SPELL_TABLE_40"] = "Телепортация в Подгород";
L["CRYOLYSIS_SPELL_TABLE_41"] = "Ледяная глыба";
L["CRYOLYSIS_SPELL_TABLE_42"] = "Холодная хватка";
L["CRYOLYSIS_SPELL_TABLE_43"] = "Возгорание";
L["CRYOLYSIS_SPELL_TABLE_44"] = "Присутствие разума";
L["CRYOLYSIS_SPELL_TABLE_45"] = "Мощь тайной магии";
L["CRYOLYSIS_SPELL_TABLE_46"] = "Портал в Оргиммар";
L["CRYOLYSIS_SPELL_TABLE_47"] = "Превращение в свинью";
L["CRYOLYSIS_SPELL_TABLE_48"] = "Прилив сил";
L["CRYOLYSIS_SPELL_TABLE_49"] = "Распознавание магии";
L["CRYOLYSIS_SPELL_TABLE_50"] = "Телепорт в Штормград";
L["CRYOLYSIS_SPELL_TABLE_51"] = "Превращение в черепаху";
L["CRYOLYSIS_SPELL_TABLE_52"] = "Обморожение";
L["CRYOLYSIS_SPELL_TABLE_53"] = "Зимняя стужа";
L["CRYOLYSIS_SPELL_TABLE_54"] = "Зимняя стужа (2)";
L["CRYOLYSIS_SPELL_TABLE_55"] = "Зимняя стужа (3)";
L["CRYOLYSIS_SPELL_TABLE_56"] = "Зимняя стужа (4)";
L["CRYOLYSIS_SPELL_TABLE_57"] = "Зимняя стужа (5)";
L["CRYOLYSIS_SPELL_TABLE_58"] = "Улучшенный ожог";
L["CRYOLYSIS_SPELL_TABLE_59"] = "Улучшенный ожог (2)";
L["CRYOLYSIS_SPELL_TABLE_60"] = "Улучшенный ожог (3)";
L["CRYOLYSIS_SPELL_TABLE_61"] = "Улучшенный ожог (4)";
L["CRYOLYSIS_SPELL_TABLE_62"] = "Улучшенный ожогy (5)"
L["CRYOLYSIS_SPELL_TABLE_63"] = "Самоцвет маны";
L["CRYOLYSIS_SPELL_TABLE_64"] = "Заморозка";
L["CRYOLYSIS_SPELL_TABLE_65"] = "Кольцо льда";
L["CRYOLYSIS_SPELL_TABLE_66"] = "Poly Diminished";
require "Globals.lua"
require "FormUtils.lua"

local _G = _G

					    -- Inner functions to encapsulate filling logic --
------------------------------------------------------------------------------------------------------
-- Create Main panel font string
------------------------------------------------------------------------------------------------------
local function createMainFontString(name, relative)
	return createFontString(name, "ARTWORK", "GameFontNormal", {1, 1, 1, 1}, nil, nil,
			nil, "CENTER", "CENTER", relative, 23, 0)
end

------------------------------------------------------------------------------------------------------
-- Create Button menu button
------------------------------------------------------------------------------------------------------
local function createMainMenuButton(name, x, y, normalTexture, pushedTexture, highlightTexture, onClick, tooltip,
									anchor, width, height, onUpdate, onEvent)
	return createButton(
			name, "UIParent", nil, "CENTER", "UIParent", "CENTER", x, y, "true", nil, width or 34, height or 34,
			normalTexture, pushedTexture, nil, highlightTexture, "ADD", onClick, function() self:StartMoving() end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, tooltip, anchor or "ANCHOR_LEFT"); end,
			function() GameTooltip:Hide(); end, function() Cryolysis_OnDragStop(self); end,
			function() self:RegisterForDrag("LeftButton"); self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				self:Hide(); end, "MEDIUM", "true", onUpdate, onEvent)
end

------------------------------------------------------------------------------------------------------
-- Create Main menu panel
------------------------------------------------------------------------------------------------------
local function createMainPanel()

	local frame = createFrame("Frame", "CryolysisGeneralFrame", nil, nil, true, nil, nil,
			nil, nil, nil, nil, nil, "OnLoad", function ()
				self:RegisterEvent("PLAYER_LOGIN")
				self:RegisterEvent("SPELLS_CHANGED")
			end
	)

	frame:SetScript("OnEvent", Cryolysis:OnLoad(event))

	createFrame("GameTooltip", "CryolysisTooltip", "UIParent", "GameTooltipTemplate", true)

	createMainMenuButton("CryolysisSpellTimerButton",  120, 340, "SpellTimerButton-Normal",
			"SpellTimerButton-Pushed", "SpellTimerButton-Highlight",
			function() Cryolysis_UseItem("Hearthstone", arg1) end, "SpellTimer")

	createMainMenuButton("CryolysisLeftSpellButton", 0, -100, "Shard", nil,
			"BaseMenu-02", function() Cryolysis_SpellButtonCast("Left", arg1); end,
			"Left")

	createMainMenuButton("CryolysisEvocationButton", -53, -100, "EvocationButton-01",
			nil, "BaseMenu-02", function() Cryolysis_BuffCast(49); end,
			"Evocation")

	createMainMenuButton("CryolysisRightSpellButton", -17, -100, "BaseMenu-02",
			nil, "BaseMenu-02", function() Cryolysis_SpellButtonCast("Right", arg1); end,
			"Right")

	createMainMenuButton("CryolysisManastoneButton", -17, -100, "ManastoneButton-01",
			nil, "BaseMenu-02", function() Cryolysis_UseItem("Manastone", arg1); end,
			"Manastone")

	createMainMenuButton("CryolysisManastoneButton", -17, -100, "ManastoneButton-01",
			nil, "BaseMenu-02", function() Cryolysis_UseItem("Manastone", arg1); end,
			"Manastone")

	createMainMenuButton("CryolysisDrinkButton", -17, -100, "DrinkButton-01",
			nil, "BaseMenu-02", function() Cryolysis_UseItem("Drink", arg1); end,
			"Drink")

	createMainMenuButton("CryolysisFoodButton", -17, -100, "FoodButton-01",
			nil, "BaseMenu-02", function() Cryolysis_UseItem("Food", arg1); end,
			"Food")

	createMainMenuButton("CryolysisMountButton", -17, -100, "MountButton-01",
			nil, "BaseMenu-02", function() Cryolysis_UseItem("Mount", arg1); end,
			"Mount", "ANCHOR_RIGHT")

	createMainMenuButton("CryolysisBuffMenuButton", 17, -100, "BuffMenuButton-01",
			nil, "BaseMenu-02", function() Cryolysis_BuffMenu(arg1); end,
			"Buff", "ANCHOR_RIGHT")

	createMainMenuButton("CryolysisBuffMenu1", 17, -100, "FrostArmor-01",
			nil, "BaseBuff-02", function() Cryolysis_BuffCast(22, arg1); end,
			"Armor", "ANCHOR_RIGHT")

	createMainMenuButton("CryolysisButton", 0, -100,
			"Shard", nil, nil, function() Cryolysis_Toggle(arg1); end,
			"Main", "ANCHOR_LEFT", 58, 58, function() Cryolysis_OnUpdate(); end,
			function() Cryolysis_OnEvent(event); end)

	createMainFontString("CryolysisListSpells", "CryolysisSpellTimerButton")
	createMainFontString("CryolysisFoodCount", "CryolysisFoodButton")
	createMainFontString("CryolysisDrinkCount", "CryolysisDrinkButton")
	createMainFontString("CryolysisManastoneCooldown", "CryolysisManastoneButton")
	createMainFontString("CryolysisEvocationCooldown", "CryolysisButton")
	createMainFontString("CryolysisShardCount", "CryolysisButton")


	return frame
end


										-- Main panel API --
------------------------------------------------------------------------------------------------------
-- Get main menu panel
------------------------------------------------------------------------------------------------------
function Cryolysis:GetMainMenuPanel()
	local frame = _G["CryolysisGeneralFrame"]
	if not frame then frame = createMainPanel() end
	return frame
end
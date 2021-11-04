local L = require "Localization.lua"
local framePositions = require "MovingUtils.lua"
local _G = _G

require "Globals.lua"
require "Settings.lua"
require "FormUtils.lua"



------------------------------------------------------------------------------------------------------
					-- Inner functions to encapsulate filling logic --
------------------------------------------------------------------------------------------------------

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
local function createMainMenuButton(name, x, y, normalTexture, pushedTexture, highlightTexture, onClick, tooltip)

	return createButton(
			name, "UIParent", nil, "CENTER", "UIParent", "CENTER",
			x, y, "true", nil, 34, 34,
			normalTexture, pushedTexture, nil, highlightTexture, "ADD", onClick,
			function() Cryolysis_OnDragStart(self); end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, tooltip, "ANCHOR_LEFT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function() self:RegisterForDrag("LeftButton"); self:RegisterForClicks("LeftButtonUp", "RightButtonUp"); self:Hide(); end,
			"MEDIUM", "true",
			function() Cryolysis_OnUpdate(); end, function() Cryolysis_OnEvent(event); end
	)
end

------------------------------------------------------------------------------------------------------
-- Create Main menu panel
------------------------------------------------------------------------------------------------------
local function createMainPanel()

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

--[[	TODO: Перевести все кнопки на новый метод + создавать фрейм
<Frame name="CryolysisGeneralFrame" hidden="false">
	<Scripts>
		<OnLoad>
			self:RegisterEvent("PLAYER_LOGIN")
			self:RegisterEvent("SPELLS_CHANGED")
		</OnLoad>
		<OnEvent>
			Cryolysis:OnLoad(event)
		</OnEvent>
	</Scripts>
</Frame>

<GameTooltip name="CryolysisTooltip" inherits="GameTooltipTemplate" parent="UIParent" toplevel="true" movable="true" frameStrata="LOW" />
</Ui>
]]

	createMainMenuButton("CryolysisDrinkButton", "UIParent",nil, -17, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\DrinkButton-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function()Cryolysis_UseItem("Drink", arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "Drink", "ANCHOR_LEFT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)

	createMainMenuButton("CryolysisFoodButton", "UIParent",nil, -17, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\DrinkButton-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function()Cryolysis_UseItem("Drink", arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "Drink", "ANCHOR_LEFT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)

	createMainMenuButton("CryolysisMountButton", "UIParent",nil, -17, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\MountButton-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function() Cryolysis_UseItem("Mount", arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "Mount", "ANCHOR_RIGHT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)

	createMainMenuButton("CryolysisBuffMenuButton", "UIParent",nil, 17, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\BuffMenuButton-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function() Cryolysis_BuffMenu(arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "Buff", "ANCHOR_RIGHT");
				if CryolysisConfig.QuickBuff then Cryolysis_BuffMenu("LeftButton"); end end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)

	createMainMenuButton("CryolysisBuffMenu1", "UIParent",nil, 17, -100,
			"true", nil, 40, 40,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\FrostArmor-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseBuff-02",
			function() Cryolysis_BuffCast(22, arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "Armor", "ANCHOR_RIGHT");
				if CryolysisConfig.QuickBuff then Cryolysis_BuffMenu("LeftButton"); end end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)

	createMainMenuButton("CryolysisBuffMenu2", "UIParent",nil, 17, -100,
			"true", nil, 40, 40,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\FrostArmor-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseBuff-02",
			function() Cryolysis_BuffCast(22, arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "ArcaneInt", "ANCHOR_RIGHT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)
	createMainMenuButton("CryolysisBuffMenu3", "UIParent",nil, 17, -100,
			"true", nil, 40, 40,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\FrostArmor-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseBuff-02",
			function() Cryolysis_BuffCast(22, arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "ArcaneInt", "ANCHOR_RIGHT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)
	createMainMenuButton("CryolysisBuffMenu4", "UIParent",nil, 17, -100,
			"true", nil, 40, 40,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\FrostArmor-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseBuff-02",
			function() Cryolysis_BuffCast(22, arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "ArcaneInt", "ANCHOR_RIGHT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)
	createMainMenuButton("CryolysisBuffMenu5", "UIParent",nil, 17, -100,
			"true", nil, 40, 40,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\FrostArmor-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseBuff-02",
			function() Cryolysis_BuffCast(22, arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "ArcaneInt", "ANCHOR_RIGHT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function()
				self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self);
			end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)

	createMainFontString("CryolysisListSpells", "CryolysisSpellTimerButton")
	createMainFontString("CryolysisFoodCount", "CryolysisFoodButton")
	createMainFontString("CryolysisDrinkCount", "CryolysisDrinkButton")
	createMainFontString("CryolysisManastoneCooldown", "CryolysisManastoneButton")
	createMainFontString("CryolysisEvocationCooldown", "CryolysisButton")
	createMainFontString("CryolysisShardCount", "CryolysisButton")


	createMainMenuButton("CryolysisButton", "UIParent",nil, 0, -100,
			"true", nil, 58, 58,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\Shard",
			nil,
			nil,
			nil,
			function() Cryolysis_Toggle(arg1); end,
			function() Cryolysis_OnDragStart(self); end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "Main", "ANCHOR_LEFT"); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_OnLoad();
				HideUIPanel(self); end,
			"MEDIUM", "true",
			function() Cryolysis_OnUpdate(); end,
			function() Cryolysis_OnEvent(event); end
	)


	return frame
end


------------------------------------------------------------------------------------------------------
										-- Main panel API --
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- Get main menu panel
------------------------------------------------------------------------------------------------------
function Cryolysis:GetMainMenuPanel()
	local frame = _G["CryolysisGeneralFrame"]
	if not frame then frame = createMainPanel() end
	return frame
end
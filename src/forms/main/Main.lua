local L = require "Localization.lua"
local framePositions = require "MovingUtils.lua"
local _G = _G

require "Globals.lua"
require "Settings.lua"
require "FormUtils.lua"


------------------------------------------------------------------------------------------------------
-- Fill main menu panel
------------------------------------------------------------------------------------------------------
function Cryolysis:FillMainMenuPanel()
	return fillMainMenuPanel(_G["CryolysisGeneralFrame"])
end

------------------------------------------------------------------------------------------------------
                     -- Inner functions to encapsulate filling logic --
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- Create Main menu panel
------------------------------------------------------------------------------------------------------
function fillMainMenuPanel(frame)

	createMainMenuButton("CryolysisSpellTimerButton", "UIParent",nil, 120, 340,
			"true", nil, 34, 34,
			"CENTER", nil, nil,
	        "Interface\AddOns\Cryolysis\UI\SpellTimerButton-Normal",
			"Interface\AddOns\Cryolysis\UI\SpellTimerButton-Pushed",
			nil,
			"Interface\AddOns\Cryolysis\UI\SpellTimerButton-Highlight",
			function() Cryolysis_UseItem("Hearthstone", arg1) end,
			function() Cryolysis_OnDragStart(self); end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "SpellTimer", AnchorSpellTimerTooltip); end,
			function() GameTooltip:Hide(); end,
			function() Cryolysis_OnDragStop(self); end,
			function() self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				self:Hide(); end, "MEDIUM", "true"
	)
	createFontString("CryolysisListSpells", "ARTWORK", "GameFontNormalSmall", {1, 1, 1, 1}, CryolysisData.Label, nil, nil, "LEFT", "LEFT", "CryolysisSpellTimerButton", 23, 0)

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
	createFontString("CryolysisShardCount", "ARTWORK", "GameFontNormal", {1, 1, 1, 1}, nil, nil, nil, "CENTER", "CENTER", "CryolysisButton", 23, 0)

	createMainMenuButton("CryolysisLeftSpellButton", "UIParent",nil, 0, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\Shard",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function() Cryolysis_SpellButtonCast("Left", arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildSpellTooltip(self, "Left", "ANCHOR_LEFT"); end,
			function()  end,
			function() Cryolysis_OnDragStop(self); end,
			function() self:RegisterForDrag("LeftButton");
				self:RegisterForClicks("LeftButtonUp", "RightButtonUp");
				HideUIPanel(self); end,
			"MEDIUM", "true",
			function()  end,
			function() end
	)
	createFontString("CryolysisShardCount", "ARTWORK", "GameFontNormal", {1, 1, 1, 1}, nil, nil, nil, "CENTER", "CENTER", "CryolysisButton", 23, 0)


	createMainMenuButton("CryolysisEvocationButton", "UIParent",nil, -53, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\EvocationButton-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function()  Cryolysis_BuffCast(49); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function()  end,
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
	createFontString("CryolysisEvocationCooldown", "ARTWORK", "GameFontNormal", {1, 1, 1, 1},
			nil, nil, nil, "CENTER", "CENTER", "CryolysisButton", 23, 0)


	createMainMenuButton("CryolysisRightSpellButton", "UIParent",nil, -17, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\Shard",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function() Cryolysis_SpellButtonCast("Right", arg1);  end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildSpellTooltip(self, "Right", "ANCHOR_RIGHT"); end,
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

	createMainMenuButton("CryolysisManastoneButton", "UIParent",nil, -17, -100,
			"true", nil, 34, 34,
			"CENTER", "UIParent", "CENTER",
			"Interface\AddOns\Cryolysis\UI\ManastoneButton-01",
			nil,
			nil,
			"Interface\AddOns\Cryolysis\UI\BaseMenu-02",
			function() Cryolysis_UseItem("Manastone", arg1); end,
			function() if not CryolysisLockServ then Cryolysis_OnDragStart(self); end end,
			function() Cryolysis_OnDragStop(self); end,
			function() Cryolysis_BuildTooltip(self, "Manastone", "ANCHOR_LEFT"); end,
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
	createFontString("CryolysisManastoneCooldown", "ARTWORK", "GameFontNormal", {1, 1, 1, 1},
			nil, nil, nil, "CENTER", "CENTER", "CryolysisManastoneButton", 23, 0)

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
	createFontString("CryolysisDrinkCount", "ARTWORK", "GameFontNormal", {1, 1, 1, 1},
			nil, nil, nil, "CENTER", "CENTER", "CryolysisDrinkButton", 23, 0)

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
	createFontString("CryolysisFoodCount", "ARTWORK", "GameFontNormal", {1, 1, 1, 1},
			nil, nil, nil, "CENTER", "CENTER", "CryolysisFoodButton", 23, 0)

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


	return frame
end

------------------------------------------------------------------------------------------------------
-- Create Button menu button
------------------------------------------------------------------------------------------------------
function createMainMenuButton(name, parent, inherit, x, y, enableMouse, text, width, height, point, relative, relativePoint,
							    normalTexture, pushedTexture, disabledTexture, highlightTexture, onClick, OnDragStart, OnDragStop, OnEnter, OnLeave, OnMouseUp, OnLoad, frameStrata, movable, OnUpdate, OnEvent)
	return createButton(
		name, parent, inherit,
		point, relative, relativePoint, x, y,
		enableMouse, nil, width, height,
		normalTexture, pushedTexture, disabledTexture, highlightTexture, "ADD",
		onClick, OnDragStart, OnDragStop, OnEnter, OnLeave, OnMouseUp, OnLoad, frameStrata, movable, OnUpdate, OnEvent
	)
end
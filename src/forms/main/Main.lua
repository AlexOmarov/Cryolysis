local L = require "Localization.lua"
local framePositions = require "MovingUtils.lua"
local _G = _G

require "Storage.lua"
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
	createFontString("CryolysisEvocationCooldown", "ARTWORK", "GameFontNormal", {1, 1, 1, 1}, nil, nil, nil, "CENTER", "CENTER", "CryolysisButton", 23, 0)


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


	return frame
end

------------------------------------------------------------------------------------------------------
-- Create Button menu option
------------------------------------------------------------------------------------------------------
function createMainMenuOption(name, width, height)
    createFontString(name, nil, "GameFontNormalSmall", { 1, 1, 1 },
        nil, nil, nil, "TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", width, height)
end

------------------------------------------------------------------------------------------------------
-- Create Button menu checkbox
------------------------------------------------------------------------------------------------------
function createMainMenuCheckButton(name, width, height, x, y, func)
    createFrame("CheckBox", name, nil, "UICheckButtonTemplate", true, width, height,
        "TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", x, y, "OnClick", func)
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

------------------------------------------------------------------------------------------------------
-- Create Button menu slider
------------------------------------------------------------------------------------------------------
function createmainMenuSlider(name, min, max, step, x, y, width, height, onEnter, onValueChanged,
								onLeave, onMouseUp)
    createSlider(name, "CryolysisButtonMenu", "OptionsSliderTemplate", min, max, step,
        "HORIZONTAL", nil, nil,
        "CENTER", "CryolysisButtonMenu", "TOP", x, y,
        width, height, nil, nil,
        onEnter, onValueChanged, onLeave, onMouseUp)
end

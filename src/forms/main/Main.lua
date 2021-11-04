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
	local button = createMainMenuButton("CryolysisSpellTimerButton", "UIParent",nil, 120, 340,
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
							    normalTexture, pushedTexture, disabledTexture, highlightTexture, onClick, OnDragStart, OnDragStop, OnEnter, OnLeave, OnMouseUp, OnLoad, frameStrata, movable)
	return createButton(
		name, parent, inherit,
		point, relative, relativePoint, x, y,
		enableMouse, nil, width, height,
		normalTexture, pushedTexture, disabledTexture, highlightTexture, "ADD",
		onClick, OnDragStart, OnDragStop, OnEnter, OnLeave, OnMouseUp, OnLoad, frameStrata, movable
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

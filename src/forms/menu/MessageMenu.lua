local L = require "Localization.lua"
local framePositions = require "Utils.lua"
local _G = _G

require "Globals.lua"
require "Settings.lua"
require "FormUtils.lua"


------------------------------------------------------------------------------------------------------
-- Get timer menu panel
------------------------------------------------------------------------------------------------------
function Cryolysis:GetMessageMenuPanel()
	local frame = _G["CryolysisMessageMenu"]
	if not frame then frame = createMessageMenuPanel() end
	return frame
end

------------------------------------------------------------------------------------------------------
				   -- Inner functions to encapsulate creation logic --
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- Create Message menu panel
------------------------------------------------------------------------------------------------------
function createMessageMenuPanel()
	local frame = CreateFrame("Frame", "CryolysisMessageMenu", "CryolysisGeneralFrame")

	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(false)
	frame:EnableMouse(true)
	frame:SetToplevel(true)
	frame:SetWidth(350)
	frame:SetHeight(452)
	frame:ClearAllPoints()
	frame:SetPoint("BOTTOMLEFT", "CryolysisGeneralFrame")

	createMessageMenuOption("CryolysisMessagePlayer_Section", 30, -65);
	createMessageMenuOption("CryolysisShowTooltips_Option", 60, -90);
	createMessageMenuOption("CryolysisSound_Option", 60, -110);
	createMessageMenuOption("CryolysisPolyBreak_Option", 70, -130);
	createMessageMenuOption("CryolysisPolyWarn_Option", 70 -150);
	createMessageMenuOption("CryolysisChatType_Option", 60 -190);
	createMessageMenuOption("CryolysisShowMessage_Option", 60 -240);
	createMessageMenuOption("CryolysisShowPolyMessage_Option", 70 -260);
	createMessageMenuOption("CryolysisShowPortalMessage_Option", 70 -280);
	createMessageMenuOption("CryolysisShowSteedMessage_Option", 70 -300);

	createMessageMenuSlider("CryolysisPolyWarn_Slider", 2, 15, 1, 0, 50, 150, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue().." secs");
		end,
		function()
			GameTooltip:SetText(self:GetValue().." secs");
			CryolysisConfig.PolyWarnTime = self:GetValue();
		end,
		function()
			GameTooltip:Hide();
		end, nil);

	createMessageMenuCheckButton("CryolysisShowTooltips_Button", 24, 24, 30, -85,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.CryolysisToolTip = true;
				Cryolysis_Msg(CRYOLYSIS_MESSAGE.Interface.TooltipOn, "USER");
			else
				CryolysisConfig.CryolysisToolTip = false;
				Cryolysis_Msg(CRYOLYSIS_MESSAGE.Interface.TooltipOff, "USER");
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createMessageMenuCheckButton("CryolysisSound_Button", 24, 24, 30, -105,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.Sound = true;
			else
				CryolysisConfig.Sound = false;
			end
		end);

	createMessageMenuCheckButton("CryolysisPolyBreak_Button", 24, 24, 30, -125,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.PolyBreak = true;
			else
				CryolysisConfig.PolyBreak = false;
			end
		end);

	createMessageMenuCheckButton("CryolysisPolyWarn_Button", 24, 24, 45, -145,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.PolyWarn = true;
			else
				CryolysisConfig.PolyWarn = false;
			end
		end);

	createMessageMenuCheckButton("CryolysisChatType_Button", 24, 24, 30, -185,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.ChatType = false;
			else
				CryolysisConfig.ChatType = true;
			end
			Cryolysis_Msg(CRYOLYSIS_MESSAGE.Interface.MessagePosition, "USER");
		end);

	createMessageMenuCheckButton("CryolysisShowMessage_Button", 24, 24, 30, -235,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.ChatMsg = true;
			else
				CryolysisConfig.ChatMsg = false;
			end
		end);

	createMessageMenuCheckButton("CryolysisShowPolyMessage_Button", 24, 24, 30, -255,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.PolyMessage = true;
			else
				CryolysisConfig.PolyMessage = false;
			end
		end);

	createMessageMenuCheckButton("CryolysisShowPortalMessage_Button", 24, 24, 45, -275,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.PortalMessage = true;
			else
				CryolysisConfig.PortalMessage = false;
			end
		end);

	createMessageMenuCheckButton("CryolysisShowSteedMessage_Button", 24, 24, 45, -295,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.SteedMessage = true;
			else
				CryolysisConfig.SteedMessage = false;
			end
		end);


	return frame
end

------------------------------------------------------------------------------------------------------
-- Create Message menu option
------------------------------------------------------------------------------------------------------
function createMessageMenuOption(name, width, height)
	createFontString(name, nil, "GameFontNormalSmall", {1, 1, 1},
		nil, nil, nil, "TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", width, height)
end

------------------------------------------------------------------------------------------------------
-- Create Message menu checkbox
------------------------------------------------------------------------------------------------------
function createMessageMenuCheckButton(name, width, height, x, y, func)
	createFrame("CheckBox", name, nil, "UICheckButtonTemplate", true, width, height,
		"TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", x, y, "OnClick", func)
end

------------------------------------------------------------------------------------------------------
-- Create Message menu slider
------------------------------------------------------------------------------------------------------
function createMessageMenuSlider(name, min, max, step, x, y, width, height,
								   onEnter, onValueChanged, onLeave, onMouseUp)
	createSlider(name, "CryolysisMessageMenu", "OptionsSliderTemplate", min, max, step,
				 "HORIZONTAL", nil, nil,
				 "CENTER", "CryolysisMessageMenu", "TOP", x, y,
				 width, height, nil, nil,
				 onEnter, onValueChanged, onLeave, onMouseUp)
end

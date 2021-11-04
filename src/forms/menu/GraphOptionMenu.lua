local L = require "Localization.lua"
local framePositions = require "Utils.lua"
local _G = _G

require "Globals.lua"
require "Settings.lua"
require "FormUtils.lua"

                      -- Inner functions to encapsulate creation logic --
------------------------------------------------------------------------------------------------------
-- Create GraphOption menu panel
------------------------------------------------------------------------------------------------------
function createGraphOptionMenuPanel()
	local frame = CreateFrame("Frame", "CryolysisGraphOptionMenu", "CryolysisGeneralFrame")

	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(false)
	frame:EnableMouse(true)
	frame:SetToplevel(true)
	frame:SetWidth(350)
	frame:SetHeight(452)
	frame:ClearAllPoints()
	frame:SetPoint("BOTTOMLEFT", "CryolysisGeneralFrame")

	createGraphOptionMenuOption("CryolysisShowConcentration_Option", 60, -40);
	createGraphOptionMenuOption("CryolysisIconsLock_Option", 60, -80);
	createGraphOptionMenuOption("CryolysisLock_Option", 60, -100);
	createGraphOptionMenuOption("CryolysisBuffMenu_Option", 60, -140);
	createGraphOptionMenuOption("CryolysisPortalMenu_Option", 60, -170);

	createGraphOptionMenuSlider("CryolysisButtonRotate_Slider", 0, 360, 18, 0, 0, 150, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue());
		end,
		function()
			CryolysisConfig.CryolysisAngle = self:GetValue();
			local x, y = CryolysisButton:GetCenter();
			GameTooltip:SetText(self:GetValue());
			Cryolysis_UpdateButtonsScale();
		end,
		function()
			GameTooltip:Hide();
		end, nil);

	createGraphOptionMenuSlider("CryolysisPortalMenuAnchor_Slider", -50, 50, 2, -30, 35, 150, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Anchor.Text);
		end,
		function()
			GameTooltip:SetText(self:GetValue());
			if CryolysisConfig.PortalMenuAnchor ~= self:GetValue() then
				CryolysisConfig.PortalMenuAnchor = self:GetValue();
				if  CryolysisPrivate.PortalMenuShow then
					Cryolysis_PortalMenu("LeftButton");
				end
				Cryolysis_PortalMenu("LeftButton");
			end
		end,
		function()
			GameTooltip:Hide();
		end, nil);

	createGraphOptionMenuSlider("CryolysisBuffMenuAnchor_Slider", -50, 50, 2, -30, 65, 150, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Anchor.Text);
		end,
		function()
			GameTooltip:SetText(self:GetValue());
			if CryolysisConfig.BuffMenuAnchor ~= self:GetValue() then
				CryolysisConfig.BuffMenuAnchor = self:GetValue();
				if CryolysisPrivate.BuffMenuShow then
					Cryolysis_BuffMenu("LeftButton");
				end
				Cryolysis_BuffMenu("LeftButton");
			end
		end,
		function()
			GameTooltip:Hide();
		end, nil);

	createGraphOptionMenuSlider("CryolysisStoneScale_Slider", 50, 150, 5, 0, -80, 150, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue().."%");
		end,
		function()
			if self:GetValue() ~= CryolysisConfig.CryolysisStoneScale then
				GameTooltip:SetText(self:GetValue().."%");
				CryolysisConfig.CryolysisStoneScale = self:GetValue();
				CryolysisFoodButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisDrinkButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisManastoneButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisLeftSpellButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisEvocationButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisRightSpellButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisBuffMenuButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisMountButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				CryolysisPortalMenuButton:SetScale(CryolysisConfig.CryolysisStoneScale / 100);
				Cryolysis_UpdateButtonsScale();
				Cryolysis_CreateMenu();
			end
		end,
		function()
			GameTooltip:Hide();
		end, nil);

	createGraphOptionMenuSlider("CryolysisButtonScale_Slider", 50, 150, 5, 0, -40, 150, 16,
		function()
			NBx, NBy = CryolysisButton:GetCenter();
			NBx = NBx * (CryolysisConfig.CryolysisButtonScale / 100);
			NBy = NBy * (CryolysisConfig.CryolysisButtonScale / 100);
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue().." %");
		end,
		function()
			if self:GetValue() ~= CryolysisConfig.CryolysisButtonScale then
				CryolysisButton:ClearAllPoints();
				GameTooltip:SetText(self:GetValue().." %");
				CryolysisConfig.CryolysisButtonScale = self:GetValue();
				CryolysisButton:SetPoint("CENTER", "UIParent", "BOTTOMLEFT", NBx / (CryolysisConfig.CryolysisButtonScale / 100), NBy / (CryolysisConfig.CryolysisButtonScale / 100));
				CryolysisButton:SetScale(CryolysisConfig.CryolysisButtonScale / 100);
				Cryolysis_UpdateButtonsScale();
			end
		end,
		function()
			GameTooltip:Hide();
		end, nil);


	createGraphOptionMenuCheckButton("CryolysisIconsLock_Button", 24, 24, 30, -75,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.CryolysisLockServ = true;
				Cryolysis_ClearAllPoints();
				Cryolysis_UpdateButtonsScale();
				Cryolysis_NoDrag();
				if not CryolysisConfig.NoDragAll then
					CryolysisButton:RegisterForDrag("LeftButton");
					CryolysisSpellTimerButton:RegisterForDrag("LeftButton");
				end
			else
				CryolysisConfig.CryolysisLockServ = false;
				Cryolysis_ClearAllPoints();
				CryolysisFoodButton:SetPoint("CENTER", "UIParent", "CENTER", -121,-100);
				CryolysisDrinkButton:SetPoint("CENTER", "UIParent", "CENTER", -87,-100);
				CryolysisManastoneButton:SetPoint("CENTER", "UIParent", "CENTER", -53,-100);
				CryolysisLeftSpellButton:SetPoint("CENTER", "UIParent", "CENTER", -17,-100);
				CryolysisEvocationButton:SetPoint("CENTER", "UIParent", "CENTER", 17,-100);
				CryolysisRightSpellButton:SetPoint("CENTER", "UIParent", "CENTER", 53,-100);
				CryolysisBuffMenuButton:SetPoint("CENTER", "UIParent", "CENTER", 87,-100);
				CryolysisMountButton:SetPoint("CENTER", "UIParent", "CENTER", 121,-100);
				CryolysisPortalMenuButton:SetPoint("CENTER", "UIParent", "CENTER", 155,-100);
				Cryolysis_Drag();
				CryolysisConfig.NoDragAll = false;
				CryolysisLock_Button:SetChecked(false);
				CryolysisButton:RegisterForDrag("LeftButton");
				CryolysisSpellTimerButton:RegisterForDrag("LeftButton");
			end
			end);

	createGraphOptionMenuCheckButton("CryolysisLock_Button", 24, 24, 30, -95,
		function(self)
			if (self:GetChecked()) then
				Cryolysis_NoDrag();
				CryolysisButton:RegisterForDrag("");
				CryolysisSpellTimerButton:RegisterForDrag("");
				CryolysisConfig.NoDragAll = true;
			else
				if not CryolysisConfig.CryolysisLockServ then
					Cryolysis_Drag();
				end
				CryolysisButton:RegisterForDrag("LeftButton");
				CryolysisSpellTimerButton:RegisterForDrag("LeftButton");
				CryolysisConfig.NoDragAll = false;
			end
		end);

	createGraphOptionMenuCheckButton("CryolysisBuffMenu_Button", 24, 24, 30, -135,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.BuffMenuPos = -34;
			else
				CryolysisConfig.BuffMenuPos = 34;
			end
			Cryolysis_CreateMenu();
		end);

	createGraphOptionMenuCheckButton("CryolysisPortalMenu_Button", 24, 24, 30, -165,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.PortalMenuPos = -34;
			else
				CryolysisConfig.PortalMenuPos = 34;
			end
			Cryolysis_CreateMenu();
		end);



	return frame
end

------------------------------------------------------------------------------------------------------
-- Create GraphOption menu option
------------------------------------------------------------------------------------------------------
function createGraphOptionMenuOption(name, width, height)
	createFontString(name, nil, "GameFontNormalSmall", {1, 1, 1},
		nil, nil, nil, "TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", width, height)
end

------------------------------------------------------------------------------------------------------
-- Create GraphOption menu checkbox
------------------------------------------------------------------------------------------------------
function createGraphOptionMenuCheckButton(name, width, height, x, y, func)
	createFrame("CheckBox", name, nil, "UICheckButtonTemplate", true, width, height,
		"TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", x, y, "OnClick", func)
end

------------------------------------------------------------------------------------------------------
-- Create GraphOption menu slider
------------------------------------------------------------------------------------------------------
function createGraphOptionMenuSlider(name, min, max, step, x, y, width, height,
								   onEnter, onValueChanged, onLeave, onMouseUp)
	createSlider(name, "CryolysisGraphOptionMenu", "OptionsSliderTemplate", min, max, step,
				 "HORIZONTAL", nil, nil,
				 "CENTER", "CryolysisGraphOptionMenu", "TOP", x, y,
				 width, height, nil, nil,
				 onEnter, onValueChanged, onLeave, onMouseUp)
end

									-- GraphOption menu API --
------------------------------------------------------------------------------------------------------
-- Get graph options menu panel
------------------------------------------------------------------------------------------------------
function Cryolysis:GetGraphOptionMenuPanel()
	local frame = _G["CryolysisGraphOptionMenu"]
	if not frame then frame = createGraphOptionMenuPanel() end
	return frame
end


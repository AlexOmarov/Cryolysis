local L = require "Localization.lua"
local framePositions = require "MovingUtils.lua"
local _G = _G

require "Globals.lua"
require "Settings.lua"
require "FormUtils.lua"

------------------------------------------------------------------------------------------------------
-- Get timer menu panel
------------------------------------------------------------------------------------------------------
function Cryolysis:GetProvisionMenuPanel()
	local frame = _G["CryolysisProvisionMenu"]
	if not frame then frame = createProvisionMenuPanel() end
	return frame
end

------------------------------------------------------------------------------------------------------
					-- Inner functions to encapsulate creation logic --
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- Create provision menu panel
------------------------------------------------------------------------------------------------------
function createProvisionMenuPanel()
	local frame = CreateFrame("Frame", "CryolysisProvisionMenu", "CryolysisGeneralFrame")

	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(false)
	frame:EnableMouse(true)
	frame:SetToplevel(true)
	frame:SetWidth(350)
	frame:SetHeight(452)
	frame:ClearAllPoints()
	frame:SetPoint("BOTTOMLEFT", "CryolysisGeneralFrame")

	createProvisionMenuOption("CryolysisProvisionsInventory_Section", 30, -20);
	createProvisionMenuOption("CryolysisProvisionSort_Option", 60, -40);
	createProvisionMenuOption("CryolysisProvisionDestroy_Option", 60, -60);
	createProvisionMenuOption("CryolysisProvisionsCount_Section", 30, -145);
	createProvisionMenuOption("CryolysisRestock_Option", 55 -135);
	createProvisionMenuOption("CryolysisRestockConfirm_Option", 70 -155);

	createProvisionMenuCheckButton("CryolysisProvisionSort_Button", 24, 24, 30, -35,
		function(self)
			if (self:GetChecked()) then
			CryolysisConfig.ProvisionSort = true;
		else
			CryolysisConfig.ProvisionSort = false;
		end
		end);

	createProvisionMenuCheckButton("CryolysisProvisionDestroy_Button", 24, 24, 30, -50,
		function(self) if (self:GetChecked()) then
			CryolysisConfig.ProvisionDestroy = true;
		else
			CryolysisConfig.ProvisionDestroy = false;
		end end);

	createProvisionMenuCheckButton("CryolysisRestock_Button", 24, 24, 30, -130,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.Restock = true;
			else
				CryolysisConfig.Restock = false;
			end
		end);

	createProvisionMenuCheckButton("CryolysisRestockConfirm_Button", 24, 24, 45, -150,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.RestockConfirm = true;
			else
				CryolysisConfig.RestockConfirm = false;
			end
		end);

	createProvisionMenuSlider("CryolysisBag_Slider", 0, 4, 1, 0, 120, 150, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(5-self:GetValue());
		end,
		function()
			GameTooltip:SetText(5-self:GetValue());
		end,
		function()
			GameTooltip:Hide();
		end,
		function()
			GameTooltip:SetText(5-self:GetValue());
			CryolysisConfig.ProvisionContainer = 4-self:GetValue();
			Cryolysis_ProvisionSwitch("MOVE");
		end);

	createProvisionMenuSlider("CryolysisButton_Slider", 1, 5, 1, -60, 5, 140, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			if self:GetValue() == 1 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Consume);
			elseif self:GetValue() == 2 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Evocation);
			elseif self:GetValue() == 3 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Polymorph);
			elseif self:GetValue() == 4 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Manastone);
			elseif self:GetValue() == 5 then
				GameTooltip:SetText(L["CRYOLYSIS_SPELL_TABLE"][7].Name);
			end
		end,
		function()
			if self:GetValue() == 1 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Consume);
			elseif self:GetValue() == 2 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Evocation);
			elseif self:GetValue() == 3 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Polymorph);
			elseif self:GetValue() == 4 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Button.Manastone);
			elseif self:GetValue() == 5 then
				GameTooltip:SetText(L["CRYOLYSIS_SPELL_TABLE"][7].Name);
			end
			CryolysisConfig.Button = self:GetValue();
		end,
		function()
			GameTooltip:Hide();
		end, nil);

	createProvisionMenuSlider("CryolysisCountType_Slider", 0, 8, 1, -75, -55, 140, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			if self:GetValue() == 0 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.None);
			elseif self:GetValue() == 1 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Provision);
			elseif self:GetValue() == 2 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Provision2);
			elseif self:GetValue() == 3 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Health);
			elseif self:GetValue() == 4 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.HealthPercent);
			elseif self:GetValue() == 5 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Mana);
			elseif self:GetValue() == 6 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.ManaPercent);
			elseif self:GetValue() == 7 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Manastone);
			else
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Evocation);
			end
		end,
		function()
			if self:GetValue() == 0 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.None);
			elseif self:GetValue() == 1 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Provision);
			elseif self:GetValue() == 2 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Provision2);
			elseif self:GetValue() == 3 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Health);
			elseif self:GetValue() == 4 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.HealthPercent);
			elseif self:GetValue() == 5 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Mana);
			elseif self:GetValue() == 6 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.ManaPercent);
			elseif self:GetValue() == 7 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Manastone);
			else
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Count.Evocation);
			end
			CryolysisConfig.CountType = self:GetValue();
		end,
		function()
			GameTooltip:Hide();
		end, nil);

	createProvisionMenuSlider("CryolysisCircle_Slider", 0, 4, 1, -75, -85, 140, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			if self:GetValue() == 0 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.None);
			elseif self:GetValue() == 1 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.HP);
			elseif self:GetValue() == 2 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.Mana);
			elseif self:GetValue() == 3 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.Manastone);
			else
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.Evocation);
			end
		end,
		function()
			if self:GetValue() == 0 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.None);
			elseif self:GetValue() == 1 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.HP);
			elseif self:GetValue() == 2 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.Mana);
			elseif self:GetValue() == 3 then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.Manastone);
			else
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].Circle.Evocation);
			end
			CryolysisConfig.Circle = self:GetValue();
		end,
		function()
			GameTooltip:Hide();
		end);

	createProvisionMenuSlider("CryolysisFood_Slider", 0, 100, 1, 75, -85, 140, 16,
		nil,
		function()
			if self:GetValue() ~= CryolysisConfig.HPLimit then
				GameTooltip:SetText(self:GetValue().."%");
				CryolysisConfig.HPLimit = self:GetValue();
			end
		end,
		function()
			GameTooltip:Hide();
		end);

	createProvisionMenuSlider("CryolysisDrink_Slider", 0, 100, 1, 75, -55, 140, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue().."%");
		end,
		function()
			if self:GetValue() ~= CryolysisConfig.MPLimit then
				GameTooltip:SetText(self:GetValue().."%");
				CryolysisConfig.MPLimit = self:GetValue();
			end
		end,
		function()
			GameTooltip:Hide();
		end,
		nil);

	createProvisionMenuSlider("CryolysisTeleport_Slider", 0, 60, 5, 85, 35, 75, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue());
		end,
		function()
			GameTooltip:SetText(self:GetValue());
		end,
		function()
			GameTooltip:Hide();
		end,
		function()
			GameTooltip:SetText(self:GetValue());
			CryolysisConfig.RestockTeleport = self:GetValue();
		end);

	createProvisionMenuSlider("CryolysisPortal_Slider", 0, 60, 5, 85, 10, 75, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue());
		end,
		function()
			GameTooltip:SetText(self:GetValue());
		end,
		function()
			GameTooltip:Hide();
		end,
		function()
			GameTooltip:SetText(self:GetValue());
			CryolysisConfig.RestockPortals = self:GetValue();
		end);

	createProvisionMenuSlider("CryolysisPowder_Slider", 0, 60, 5, 85, -15, 75, 16,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip:SetText(self:GetValue());
		end,
		function()
			GameTooltip:SetText(self:GetValue());
		end,
		function()
			GameTooltip:Hide();
		end,
		function()
			GameTooltip:SetText(self:GetValue());
			CryolysisConfig.RestockPowder = self:GetValue();
		end);


	return frame
end

------------------------------------------------------------------------------------------------------
-- Create Provision menu option
------------------------------------------------------------------------------------------------------
function createProvisionMenuOption(name, width, height)
	createFontString(name, nil, "GameFontNormalSmall", {1, 1, 1},
		nil, nil, nil, "TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", width, height)
end

------------------------------------------------------------------------------------------------------
-- Create Provision menu checkbox
------------------------------------------------------------------------------------------------------
function createProvisionMenuCheckButton(name, width, height, x, y, func)
	createFrame("CheckBox", name, nil, "UICheckButtonTemplate", true, width, height,
		"TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", x, y, "OnClick", func)
end

------------------------------------------------------------------------------------------------------
-- Create Provision menu slider
------------------------------------------------------------------------------------------------------
function createProvisionMenuSlider(name, min, max, step, x, y, width, height,
								   onEnter, onValueChanged, onLeave, onMouseUp)
	createSlider(name, "CryolysisProvisionMenu", "OptionsSliderTemplate", min, max, step,
				 "HORIZONTAL", nil, nil,
				 "CENTER", "CryolysisProvisionMenu", "TOP", x, y,
				 width, height, nil, nil,
				 onEnter, onValueChanged, onLeave, onMouseUp)
end

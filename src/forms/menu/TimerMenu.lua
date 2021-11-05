require "Globals.lua"
require "Localization.lua"
require "FormUtils.lua"

					-- Inner functions to encapsulate creation logic --
------------------------------------------------------------------------------------------------------
-- Create timer menu option

local function createTimerMenuOption(name, width, height)
	createFontString(name, nil, "GameFontNormalSmall", {1, 1, 1},
			nil, nil, nil, "TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", width, height)
end
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- Create timer menu checkbox

local function createTimerMenuCheckButton(name, width, height, x, y, func)
	createFrame("CheckBox", name, nil, "UICheckButtonTemplate", true, width, height,
			"TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", x, y, "OnClick", func)
end
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- Create timer menu panel

local function createTimerMenuPanel()
	local frame = CreateFrame("Frame", "CryolysisTimerMenu", "CryolysisGeneralFrame")

	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(false)
	frame:EnableMouse(true)
	frame:SetToplevel(true)
	frame:SetWidth(350)
	frame:SetHeight(452)
	frame:ClearAllPoints()
	frame:SetPoint("BOTTOMLEFT", "CryolysisGeneralFrame")

	createTimerMenuOption("CryolysisShowSpellTimers_Option", 60, -40);
	createTimerMenuOption("CryolysisTimerButton_Option", 60, -60);
	createTimerMenuOption("CryolysisSTimer_Option", 60, -80);
	createTimerMenuOption("CryolysisGraphicalTimer_Section", 30, -115);
	createTimerMenuOption("CryolysisGraphicalTimer_Option", 60 -135);
	createTimerMenuOption("CryolysisTimerColor_Option", 60 -155);
	createTimerMenuOption("CryolysisTimerDirection_Option", 60 -175);

	createTimerMenuCheckButton("CryolysisShowSpellTimers_Button", 24, 24, 30, -35,
			function(self) CryolysisConfig.ShowSpellTimers = self:GetChecked() end);

	createTimerMenuCheckButton("CryolysisTimerButton_Button", 24, 24, 30, -55,
			function(self) CryolysisConfig.ShowSpellTimerButton = self:GetChecked() end);

	createTimerMenuCheckButton("CryolysisSTimer_Button", 24, 24, 30, -75,
			function(self)
				if (self:GetChecked()) then
					CryolysisConfig.SpellTimerPos = -1;
					CryolysisConfig.SpellTimerJust = "RIGHT";
					AnchorSpellTimerTooltip = "ANCHOR_LEFT"
				else
					CryolysisConfig.SpellTimerPos = 1;
					CryolysisConfig.SpellTimerJust = "LEFT";
					AnchorSpellTimerTooltip = "ANCHOR_RIGHT";
				end
				CryolysisListSpells:ClearAllPoints();
				CryolysisListSpells:SetJustifyH(CryolysisConfig.SpellTimerJust);
				CryolysisListSpells:SetPoint("TOP"..CryolysisConfig.SpellTimerJust, "CryolysisSpellTimerButton", "CENTER", CryolysisConfig.SpellTimerPos * 23, 10);
			end);

	createTimerMenuCheckButton("CryolysisGraphicalTimer_Button", 24, 24, 30, -130,
			function(self)
				CryolysisConfig.Graphical = self:GetChecked();
				Cryolysis_HideGraphTimer();
			end);

	createTimerMenuCheckButton("CryolysisTimerColor_Button", 24, 24, 30, -150,
			function(self) CryolysisConfig.Yellow = not self:GetChecked(); end);

	createTimerMenuCheckButton("CryolysisTimerDirection_Button", 24, 24, 30, -170,
			function(self)
				if (self:GetChecked()) then
					CryolysisConfig.SensListe = -1;
				else
					CryolysisConfig.SensListe = 1;
				end
			end);


	return frame
end

					                     -- TimerMenu API --
------------------------------------------------------------------------------------------------------
-- Get timer menu panel
------------------------------------------------------------------------------------------------------
function CRYOLYSIS:GetTimerMenuPanel()
	local frame = _G["CryolysisTimerMenu"]
	if not frame then frame = createTimerMenuPanel() end
	return frame
end
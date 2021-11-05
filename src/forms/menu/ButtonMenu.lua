require "Globals.lua"
require "Localization.lua"
require "FormUtils.lua"

					-- Inner functions to encapsulate filling logic --
------------------------------------------------------------------------------------------------------
-- Create Button menu option
------------------------------------------------------------------------------------------------------
local function createButtonMenuOption(name, width, height)
	CryolysisFormUtils:CreateFontString(name, nil, "GameFontNormalSmall", { 1, 1, 1 },
			nil, nil, nil, "TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", width, height)
end

------------------------------------------------------------------------------------------------------
-- Create Button menu checkbox
------------------------------------------------------------------------------------------------------
local function createButtonMenuCheckButton(name, width, height, x, y, func)
	CryolysisFormUtils:CreateFrame("CheckBox", name, nil, "UICheckButtonTemplate", true, width, height,
			"TOPLEFT", "CryolysisTimerMenu", "TOPLEFT", x, y, "OnClick", func)
end

------------------------------------------------------------------------------------------------------
-- Create Button menu button
------------------------------------------------------------------------------------------------------
local function createButtonMenuButton(name, inherit, x, y, enableMouse, text, width, height, point, relative,
									  relativePoint, normalTexture, pushedTexture, disabledTexture, highlightTexture,
									  onClick)
	CryolysisFormUtils:CreateButton(
			name, "CryolysisButtonMenu", inherit,
			point, relative, relativePoint, x, y,
			enableMouse, nil, "29", "29",
			normalTexture, pushedTexture, disabledTexture, highlightTexture, "ADD",
			onClick, nil, nil, nil, nil, nil, nil, nil, nil
	)
end
------------------------------------------------------------------------------------------------------
-- Create Button menu slider
------------------------------------------------------------------------------------------------------
local function createButtonMenuSlider(name, min, max, step, x, y, width, height, onEnter, onValueChanged,
								onLeave, onMouseUp)
	CryolysisFormUtils:CreateSlider(name, "CryolysisButtonMenu", "OptionsSliderTemplate", min, max, step,
			"HORIZONTAL", nil, nil,
			"CENTER", "CryolysisButtonMenu", "TOP", x, y,
			width, height, nil, nil,
			onEnter, onValueChanged, onLeave, onMouseUp)
end



------------------------------------------------------------------------------------------------------
-- Create Button menu panel
------------------------------------------------------------------------------------------------------
local function createButtonMenuPanel()
    local frame = CreateFrame("Frame", "CryolysisButtonMenu", "CryolysisGeneralFrame")

    frame:SetFrameStrata("DIALOG")
    frame:SetMovable(false)
    frame:EnableMouse(true)
    frame:SetToplevel(true)
    frame:SetWidth(350)
    frame:SetHitRectInsets(0, 35, 0, 75)
    frame:SetHeight(452)
    frame:ClearAllPoints()
    frame:SetPoint("BOTTOMLEFT", "CryolysisGeneralFrame")
	CryolysisFormUtils:CreateButton("ReorderTemplate", nil, nil, nil, nil,
			nil, nil, nil, nil, nil, nil,
		nil, nil, nil, nil,
			"Interface\Buttons\CheckButtonHilight", "ADD", function() Reorder.OnClick(-1) end,
			nil, nil, nil, nil, nil,  nil,
			nil, nil)
	CryolysisFormUtils:CreateSlider("SpellButtonSliderTemplate",
		nil,
		"OptionsSliderTemplate",
		1, 8, 1, nil, nil,nil,nil,nil,
			nil,nil,nil,120,16,nil,nil,
		function()
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			if (self:GetValue() == 1) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.Armor);
			elseif (self:GetValue() == 2) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.ArcaneInt);
			elseif (self:GetValue() == 3) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DampenMagic);
			elseif (self:GetValue() == 4) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.IceBarrier);
			elseif (self:GetValue() == 5) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.FireWard);
			elseif (self:GetValue() == 6) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DetectMagic);
			elseif (self:GetValue() == 7) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.RemoveCurse);
			elseif (self:GetValue() == 8) then
				GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.SlowFall);
			end
		end,
	function()
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		if (self:GetValue() == 1) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.Armor);
		elseif (self:GetValue() == 2) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.ArcaneInt);
		elseif (self:GetValue() == 3) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DampenMagic);
		elseif (self:GetValue() == 4) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.IceBarrier);
		elseif (self:GetValue() == 5) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.FireWard);
		elseif (self:GetValue() == 6) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DetectMagic);
		elseif (self:GetValue() == 7) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.RemoveCurse);
		elseif (self:GetValue() == 8) then
			GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.SlowFall);
		end
		CryolysisConfig.RightSpell = self:GetValue();
		SerenityButtonTexture.Stones.Base[4] = 0;
	end,
	function()
		GameTooltip:Hide();
	end)

    createButtonMenuOption("CryolysisShowButton_String", 30, -25);
    createButtonMenuOption("CryolysisOnButton_String", 180, -25);
    createButtonMenuOption("CryolysisShowFood_Option", 60, -40);
    createButtonMenuOption("CryolysisShowDrink_Option", 60, -60);
    createButtonMenuOption("CryolysisShowManaStone_Option", 60, -80);
    createButtonMenuOption("CryolysisShowLeftSpell_Option", 60, -100);
    createButtonMenuOption("CryolysisShowRightSpell_Option", 60, -140);
    createButtonMenuOption("CryolysisShowBuffMenu_Option", 60, -160);
    createButtonMenuOption("CryolysisShowMount_Option", 60, -180);
    createButtonMenuOption("CryolysisShowPortalMenu_Option", 60, -200);
    createButtonMenuOption("CryolysisFoodText_Option", 200, -40);
    createButtonMenuOption("CryolysisDrinkText_Option", 200, -60);
    createButtonMenuOption("CryolysisManaStoneText_Option", 200, -80);
    createButtonMenuOption("CryolysisEvocationText_Option", 200, -120);
    createButtonMenuOption("CryolysisFeatherText_Option", 200, -160);
    createButtonMenuOption("CryolysisFeatherText_Option", 200, -160);
    createButtonMenuOption("CryolysisRuneText_Option", 200, -200);
    createButtonMenuOption("CryolysisQuickBuff_Option", 60, -215);

    createButtonMenuSlider("CryolysisManaStoneOrder_Slider", 1, 2, 1, 0, -40, 150, 16,
        nil,
        function()
            if self:GetValue() ~= CryolysisConfig.ManaStoneOrder then
                CryolysisConfig.ManaStoneOrder = self:GetValue();
            end
        end);

    createButtonMenuSlider("CryolysisRightSpell_Slider", 1, 2, 1, 70, 80, 120, 16,
        nil,
        function()
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
            if (self:GetValue() == 1) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.Armor);
            elseif (self:GetValue() == 2) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.ArcaneInt);
            elseif (self:GetValue() == 3) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DampenMagic);
            elseif (self:GetValue() == 4) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.IceBarrier);
            elseif (self:GetValue() == 5) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.FireWard);
            elseif (self:GetValue() == 6) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DetectMagic);
            elseif (self:GetValue() == 7) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.RemoveCurse);
            elseif (self:GetValue() == 8) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.SlowFall);
            end
            CryolysisConfig.RightSpell = self:GetValue();
            CryolysisButtonTexture.Stones.Base[6] = 0;
        end,
        function()
            GameTooltip:Hide();
        end);

    createButtonMenuSlider("CryolysisLeftSpell_Slider", 1, 2, 1, 70, 120, 120, 16,
        function()
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
            if (self:GetValue() == 1) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.Armor);
            elseif (self:GetValue() == 2) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.ArcaneInt);
            elseif (self:GetValue() == 3) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DampenMagic);
            elseif (self:GetValue() == 4) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.IceBarrier);
            elseif (self:GetValue() == 5) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.FireWard);
            elseif (self:GetValue() == 6) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DetectMagic);
            elseif (self:GetValue() == 7) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.RemoveCurse);
            elseif (self:GetValue() == 8) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.SlowFall);
            end
        end,
        function()
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
            if (self:GetValue() == 1) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.Armor);
            elseif (self:GetValue() == 2) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.ArcaneInt);
            elseif (self:GetValue() == 3) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DampenMagic);
            elseif (self:GetValue() == 4) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.IceBarrier);
            elseif (self:GetValue() == 5) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.FireWard);
            elseif (self:GetValue() == 6) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.DetectMagic);
            elseif (self:GetValue() == 7) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.RemoveCurse);
            elseif (self:GetValue() == 8) then
                GameTooltip:SetText(L["CRYOLYSIS_CONFIGURATION"].SpellButton.SlowFall);
            end
            CryolysisConfig.LeftSpell = self:GetValue();
            CryolysisButtonTexture.Stones.Base[4] = 0;
        end,
        function()
            GameTooltip:Hide();
        end);


    createButtonMenuCheckButton("CryolysisShowFood_Button", 24, 24,
		30, -35,
        function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[1] = true;
				ShowUIPanel(CryolysisFoodButton);
			else
				CryolysisConfig.StonePosition[1] = false;
				HideUIPanel(CryolysisFoodButton);
			end
			Cryolysis_UpdateButtonsScale();
        end);

	createButtonMenuCheckButton("CryolysisShowDrink_Button", 24, 24,
		30, -55,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[2] = true;
				ShowUIPanel(CryolysisDrinkButton);
			else
				CryolysisConfig.StonePosition[2] = false;
				HideUIPanel(CryoylsisDrinkButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisShowManaStone_Button", 24, 24,
		30, -75,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[3] = true;
				ShowUIPanel(CryolysisManastoneButton);
			else
				CryolysisConfig.StonePosition[3] = false;
				HideUIPanel(CryolysisManastoneButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisShowLeftSpell_Button", 24, 24,
		30, -95,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[4] = true;
				ShowUIPanel(CryolysisLeftSpellButton);
			else
				CryolysisConfig.StonePosition[4] = false;
				HideUIPanel(CryolysisLeftSpellButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisShowEvocation_Button", 24, 24,
		30, -115,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[5] = true;
				ShowUIPanel(CryolysisEvocationButton);
			else
				CryolysisConfig.StonePosition[5] = false;
				HideUIPanel(CryolysisEvocationButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisShowRightSpell_Button", 24, 24,
		30, -135,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[6] = true;
				ShowUIPanel(CryolysisRightSpellButton);
			else
				CryolysisConfig.StonePosition[6] = false;
				HideUIPanel(CryolysisRightSpellButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisShowBuffMenu_Button", 24, 24,
		30, -155,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[7] = true;
				ShowUIPanel(CryolysisBuffMenuButton);
			else
				CryolysisConfig.StonePosition[7] = false;
				HideUIPanel(CryolysisBuffMenuButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisShowMount_Button", 24, 24,
		30, -175,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[8] = true;
				ShowUIPanel(CryolysisMountButton);
				Cryolysis_BagExplore();
			else
				CryolysisConfig.StonePosition[8] = false;
				HideUIPanel(CryolysisMountButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisShowPortalMenu_Button", 24, 24,
		30, -195,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.StonePosition[9] = true;
				ShowUIPanel(CryolysisPortalMenuButton);
			else
				CryolysisConfig.StonePosition[9] = false;
				HideUIPanel(CryolysisPortalMenuButton);
			end
			Cryolysis_UpdateButtonsScale();
		end);

	createButtonMenuCheckButton("CryolysisQuickBuff_Button", 24, 24,
		30, -210,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.QuickBuff = true;
			else
				CryolysisConfig.QuickBuff = false;
			end
		end);

	createButtonMenuCheckButton("CryolysisFoodText_Button", 24, 24,
		175, -35,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.FoodCountText = true;
			else
				CryolysisConfig.FoodCountText = false;
			end
		end);

	createButtonMenuCheckButton("CryolysisFoodText_Button", 24, 24,
		175, -55,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.DrinkCountText = true;
			else
				CryolysisConfig.DrinkCountText = false;
			end
		end);

	createButtonMenuCheckButton("CryolysisManaStoneText_Button", 24, 24,
		175, -75,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.ManastoneCooldownText = true;
			else
				CryolysisConfig.ManastoneCooldownText = false;
			end
		end);

	createButtonMenuCheckButton("CryolysisEvocationText_Button", 24, 24,
		175, -115,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.EvocationCooldownText = true;
			else
				CryolysisConfig.EvocationCooldownText = false;
			end
		end);

	createButtonMenuCheckButton("CryolysisFeatherText_Button", 24, 24,
		175, -155,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.FeatherCountText = true;
			else
				CryolysisConfig.FeatherCountText = false;
			end
		end);

	createButtonMenuCheckButton("CryolysisPowderText_Button", 24, 24,
		175, -175,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.PowderCountText = true;
			else
				CryolysisConfig.PowderCountText = false;
			end
		end);

	createButtonMenuCheckButton("CryolysisRuneText_Button", 24, 24,
		175, -195,
		function(self)
			if (self:GetChecked()) then
				CryolysisConfig.RuneCountText = true;
			else
				CryolysisConfig.RuneCountText = false;
			end
		end);


	createButtonMenuButton("ReorderLeft", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"TOPLEFT", "CryolysisButtonMenu", "TOPLEFT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder1", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "ReorderLeft", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder2", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder1", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder3", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder2", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder4", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder3", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder5", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder4", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder6", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder5", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder7", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder6", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder8", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder7", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("Reorder9", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder8", "RIGHT",
		nil, nil, nil, nil, nil)
	createButtonMenuButton("ReorderRight", "ReorderTemplate", nil, nil,
		nil, nil, nil, nil,
		"LEFT", "Reorder9", "RIGHT",
		nil, nil, nil, nil, nil)

    return frame
end

									-- Button menu API --
------------------------------------------------------------------------------------------------------
-- Get timer menu panel
------------------------------------------------------------------------------------------------------
function Cryolysis:GetButtonMenuPanel()
	local frame = CryolysisButtonMenu
	if not frame then frame = createButtonMenuPanel() end
	return frame
end

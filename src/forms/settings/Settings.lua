local L = require "Localization.lua"
local framePositions = require "MovingUtils.lua"
local _G = _G

require "Globals.lua"
require "FormUtils.lua"

------------------------------------------------------------------------------------------------------
-- Get settings panel
------------------------------------------------------------------------------------------------------
function Cryolysis:GetConfigPanel()
	local frame = _G["CryolysisGeneralFrame"]
	if not frame then frame = createConfigPanel() end
	return frame
end

------------------------------------------------------------------------------------------------------
				  -- Inner functions to encapsulate creation logic --
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- Create settings panel
------------------------------------------------------------------------------------------------------
local function createConfigPanel()
	local frame = CreateFrame("Frame", "CryolysisGeneralFrame", UIParent)

	frame:SetFrameStrata("DIALOG")
	frame:SetMovable(true)
	frame:EnableMouse(true)
	frame:SetToplevel(true)
	frame:SetWidth(450)
	frame:SetHeight(512)
	frame:Show()
	frame:ClearAllPoints()
	if framePositions[frame:GetName()] then
		frame:SetPoint(framePositions[frame:GetName()][1],
			framePositions[frame:GetName()][2],
			framePositions[frame:GetName()][3],
			framePositions[frame:GetName()][4],
			framePositions[frame:GetName()][5])
	else
		frame:SetPoint("TOPLEFT", 100, -100)
	end

	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnMouseUp", function(self) Cryolysis:OnDragStop(self) end)
	frame:SetScript("OnDragStart", function(self) Cryolysis:OnDragStart(self) end)
	frame:SetScript("OnDragStop", function(self) Cryolysis:OnDragStop(self) end)

	createTexture("CryolysisGeneralIcon", "BACKGROUND", 58, 58,
		"Interface\\Spellbook\\Spellbook-Icon", "TOPLEFT", 10, -10)

	createTexture("CryolysisGeneralIcon", "BORDER", 256, 256,
		"Interface\\PaperDollInfoFrame\\UI-Character-General-TopLeft", "TOPLEFT", nil, nil)

	createTexture("CryolysisGeneralIcon", "BORDER", 128, 256,
		"Interface\\PaperDollInfoFrame\\UI-Character-General-TopRight", "TOPRIGHT", nil, nil)

	createTexture("CryolysisGeneralIcon", "BORDER", 256, 256,
		"Interface\\PaperDollInfoFrame\\UI-Character-General-BottomLeft", "BOTTOMLEFT", nil, nil)

	createTexture("CryolysisGeneralIcon", "BORDER", 128, 256,
		"Interface\\PaperDollInfoFrame\\UI-Character-General-BottomRight", "BOTTOMRIGHT", nil, nil)

	createFontString("CryolysisVersion", nil, "GameFontNormal", {1, 0.8, 0}, CryolysisData.Label, nil, nil, "CENTER", nil, nil, 6, 233)

	createFontString("CryolysisGeneralPageText", nil, "GameFontNormal", {1, 0.8, 0}, CryolysisData.Label, 102, 0, "BOTTOM", nil, nil, -14, 96)

	-- Bouton de fermeture de la fenêtre
	frame = CreateFrame("Button", "CryolysisGeneralCloseButton", "CryolysisGeneralFrame", "UIPanelCloseButton")
	frame:ClearAllPoints()
	frame:SetPoint("CENTER", "CryolysisGeneralFrame", "TOPRIGHT", -46, -24)

	for k, v in ipairs(_G["CryolysisGeneralTabs"]) do
		local name = _G["CryolysisGeneralTabs"][k]:GetName();
		local checkButton = CreateFrame("CheckButton", v:GetName(), "CryolysisGeneralFrame")
		checkButton:SetWidth(32)
		checkButton:SetHeight(32)
		checkButton:Show()
		checkButton:ClearAllPoints()

		checkButton:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:SetText(L[name])
		end)
		checkButton:SetScript("OnLeave", function() GameTooltip:Hide() end)
		checkButton:SetScript("OnClick", function() openPanel(name) end)

		createTexture("SkillLineTab", "BACKGROUND", 64, 64,
			"Interface\\SpellBook\\SpellBook-SkillLineTab", "TOPLEFT", -3, 11)

		checkButton:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")
		checkButton:GetHighlightTexture():SetBlendMode("ADD")
		checkButton:SetCheckedTexture("Interface\\Buttons\\CheckButtonHilight")
		checkButton:GetCheckedTexture():SetBlendMode("ADD")
		if k == 1 then
			checkButton:SetPoint("TOPLEFT", "NecrosisGeneralFrame", "TOPRIGHT", -32, -65)
			checkButton:SetNormalTexture("Interface\\Icons\\Ability_Creature_Cursed_03")
		else
			checkButton:SetPoint("TOPLEFT", _G["CryolysisGeneralTabs"][k - 1]:GetName(), "BOTTOMLEFT", 0, -17)
			checkButton:SetNormalTexture("Interface\\Icons\\" .. frame:GetName())
		end
	end
	openPanel(_G["CryolysisGeneralTabs"][1]:GetName())
	return frame
end

------------------------------------------------------------------------------------------------------
-- Function to display different pages of the settings panel
------------------------------------------------------------------------------------------------------
local function openPanel(PanelCode)
    for k, v in ipairs(_G["CryolysisGeneralTabs"]) do
        if v.GetName() == PanelCode then
            Cryolysis:ShowPanel(v)
            CryolysisGeneralPageText:SetText(L[PanelCode])
        else
            HideUIPanel(v.GetName())
        end
    end
end
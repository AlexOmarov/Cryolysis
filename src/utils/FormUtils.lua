------------------------------------------------------------------------------------------------------
-- Cache new coordinates for all frames --
------------------------------------------------------------------------------------------------------

function CryolysisFormUtils:OnDragStop(button)
    button:StopMovingOrSizing()
    local anc, parent, ancParent, x, y = button:GetPoint()
    if not parent then
        parent = "UIParent"
    else
        parent = parent:GetName()
    end
    FramePositions[button:GetName()] = { anc, parent, ancParent, x, y }
end

------------------------------------------------------------------------------------------------------
-- Create and return texture with passed parameters
------------------------------------------------------------------------------------------------------
function CryolysisFormUtils:CreateTexture(name, type, width, height, path, point, x, y)
    local texture = frame:CreateTexture(name, type)
    texture:SetWidth(width)
    texture:SetHeight(height)
    texture:SetTexture(path)
    texture:Show()
    texture:ClearAllPoints()
    texture:SetPoint(point, x, y)
    return texture
end

------------------------------------------------------------------------------------------------------
-- Create and return font string with passed parameters
------------------------------------------------------------------------------------------------------
function CryolysisFormUtils:CreateFontString(frame, name, type, parent, color, text, width, height, point, pointRelative, pointRelativeFrom, x, y)
    local fontString = frame:CreateFontString(name, nil, parent)
    fontString:SetTextColor(color[1], color[2], color[3], color[4])
    fontString:SetText(text)
    fontString:SetWidth(width)
    fontString:SetHeight(height)
    fontString:SetPoint(point, pointRelative, pointRelativeFrom, x, y)
    return fontString
end

------------------------------------------------------------------------------------------------------
-- Create and return frame with passed parameters
------------------------------------------------------------------------------------------------------
function CryolysisFormUtils:CreateFrame(type, name, parent, inherit, enableMouse, width, height,
                               point, pointRelative, relativeFrom, x, y, scriptType, func)
    local frame = CreateFrame(type, name, parent, inherit)
    frame:EnableMouse(enableMouse)
    frame:SetWidth(width)
    frame:SetHeight(height)
    frame:Show()
    frame:ClearAllPoints()
    frame:SetPoint(point, pointRelative, relativeFrom, x, y)
    frame:SetScript(scriptType, func)
    return frame
end

------------------------------------------------------------------------------------------------------
-- Create and return slider with passed parameters
------------------------------------------------------------------------------------------------------
function CryolysisFormUtils:CreateSlider(name, parent, inherit, min, max, step,
                                orientation, hitRectInsets, backdrop,
                                point, pointRelative, relativeFrom, x, y,
                                width, height, texture, strata,
                                onEnter, onValueChanged, onLeave, onMouseUp)
    local slider = CreateFrame("Slider", name, parent, inherit)
    slider:SetOrientation(orientation)
    slider:SetHitRectInsets(hitRectInsets)
    slider:SetBackdrop(backdrop)
    slider:SetWidth(width)
    slider:SetThumbTexture(texture)
    slider:SetFrameStrata(strata)
    return slider
end

------------------------------------------------------------------------------------------------------
-- Create and return button with passed parameters
------------------------------------------------------------------------------------------------------
function CryolysisFormUtils:CreateButton(name, parent, inherit,
                                point, pointRelative, relativeFrom, x, y,
                                enableMouse, text, width, height,
                                normalTexture, pushedTexture, disabledTexture, highlightTexture, alphaMod,
                                onClick, OnDragStart, OnDragStop, OnEnter, OnLeave, OnMouseUp,
                                OnLoad, frameStrata, movable, OnUpdate, OnEvent)
    local button = CreateFrame("Button", name, parent, inherit)
    button:SetText(text)
    button:SetWidth(width)
    button:SetHeight(height)
    button:EnableMouse(enableMouse)
    button:SetMovable(movable)
    button:SetFrameStrata(frameStrata)

    button:SetPoint(point, pointRelative, relativeFrom, x, y)

    button:SetNormalTexture(normalTexture)
    button:SetPushedTexture(pushedTexture)
    button:SetDisabledTexture(disabledTexture)
    button:SetHighlightTexture(highlightTexture, alphaMod)

    button:SetScript("OnClick", onClick)
    button:SetScript("OnDragStart", OnDragStart)
    button:SetScript("OnDragStop", OnDragStop)
    button:SetScript("OnEnter", OnEnter)
    button:SetScript("OnLeave", OnLeave)
    button:SetScript("OnMouseUp", OnMouseUp)
    button:SetScript("OnLoad", OnLoad)
    button:SetScript("OnUpdate", OnUpdate)
    button:SetScript("OnEvent", OnEvent)
    return button
end
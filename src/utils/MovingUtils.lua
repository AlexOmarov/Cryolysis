function Cryolysis:OnDragStart(button)
    button:StartMoving()
end

function Cryolysis:OnDragStop(button)
    button:StopMovingOrSizing()
    local anc, parent, ancParent, x, y = button:GetPoint()
    if not parent then parent = "UIParent" else parent = parent:GetName() end
    FramePositions[button:GetName()] = {anc, parent, ancParent, x, y}
end

return FramePositions


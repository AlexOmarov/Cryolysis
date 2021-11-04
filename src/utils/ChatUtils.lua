------------------------------------------------------------------------------------------------------
                                    -- Local functions --
------------------------------------------------------------------------------------------------------

-- COLORIZATION!
local function colorize(msg)
    msg = string.gsub(msg, "<white>", "|CFFFFFFFF");
    msg = string.gsub(msg, "<lightBlue>", "|CFF99CCFF");
    msg = string.gsub(msg, "<brightGreen>", "|CFF00FF00");
    msg = string.gsub(msg, "<lightGreen2>", "|CFF66FF66");
    msg = string.gsub(msg, "<lightGreen1>", "|CFF99FF66");
    msg = string.gsub(msg, "<yellowGreen>", "|CFFCCFF66");
    msg = string.gsub(msg, "<lightYellow>", "|CFFFFFF66");
    msg = string.gsub(msg, "<darkYellow>", "|CFFFFCC00");
    msg = string.gsub(msg, "<lightOrange>", "|CFFFFCC66");
    msg = string.gsub(msg, "<dirtyOrange>", "|CFFFF9933");
    msg = string.gsub(msg, "<darkOrange>", "|CFFFF6600");
    msg = string.gsub(msg, "<redOrange>", "|CFFFF3300");
    msg = string.gsub(msg, "<red>", "|CFFFF0000");
    msg = string.gsub(msg, "<lightRed>", "|CFFFF5555");
    msg = string.gsub(msg, "<lightPurple1>", "|CFFFFC4FF");
    msg = string.gsub(msg, "<lightPurple2>", "|CFFFF99FF");
    msg = string.gsub(msg, "<purple>", "|CFFFF50FF");
    msg = string.gsub(msg, "<darkPurple1>", "|CFFFF00FF");
    msg = string.gsub(msg, "<darkPurple2>", "|CFFB700B7");
    msg = string.gsub(msg, "<close>", "|r");
    msg = string.gsub(msg, "<darkBlue>", "|C2D59E9FF");
    return msg;
end

-- USER-FRIENDLY VARIABLES WHEN DISPLAYING CHAT
local function replace(msg, target, portal, mount)
    msg = string.gsub(msg, "<player>", UnitName("player"));
    if target then
        msg = string.gsub(msg, "<target>", target);
    end
    if portal then
        msg = string.gsub(msg, "<portal>", portal);
    end
    if mount then
        msg = string.gsub(msg, "<mount>", mount);
    end
    return msg;
end

------------------------------------------------------------------------------------------------------
                                    -- Send messages --
------------------------------------------------------------------------------------------------------
function CRYOLYSIS:SendUserMessage(msg, target, portal, mount)
    ChatFrame1:AddMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)),
            0.2, 0.9, 0.95, 1.0, UIERRORS_HOLD_TIME);
end

function CRYOLYSIS:SendWorldMessage(msg, target, portal, mount)
    if (GetNumRaidMembers() > 0) then
        SendChatMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)), "RAID");
    elseif (GetNumPartyMembers() > 0) then
        SendChatMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)), "PARTY");
    else
        SendChatMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)), "SAY");
    end
end

function CRYOLYSIS:SendGroupMessage(msg, type, target, portal, mount)
    if (GetNumRaidMembers() > 0 and type == "GROUP") then
        SendChatMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)), "RAID");
    elseif (GetNumPartyMembers() > 0 and type == "GROUP") then
        SendChatMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)), "PARTY");
    else SendChatMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)), type);
    end
end

function CRYOLYSIS:ShowError(msg, target, portal, mount)
    UIErrorsFrame:AddMessage(CRYOLYSIS_USER_MESSAGE_INTRO .. colorize(replace(msg, target, portal, mount)),
            0.2, 0.9, 0.95, 1.0, UIERRORS_HOLD_TIME);
end

------------------------------------------------------------------------------------------------------
                                        -- Colorize timer --
------------------------------------------------------------------------------------------------------

function CRYOLYSIS:ColorizeTimer(percent)
    local color = "<brightGreen>";   -- |C2D47E7FF
    if (percent < 10) then
        color = "<red>";             -- |C26FBF8FF
    elseif (percent < 20) then
        color = "<redOrange>";       -- |C28D8F5FF
    elseif (percent < 30) then
        color = "<darkOrange>";      -- |C28C6F4FF      350
    elseif (percent < 40) then
        color = "<dirtyOrange>";     -- |C29B5F2FF       300
    elseif (percent < 50) then
        color = "<darkYellow>";      -- |C2AA2EFFF
    elseif (percent < 60) then
        color = "<lightYellow>";     -- |C2A90EEFF
    elseif (percent < 70) then
        color = "<yellowGreen>";     -- |C2B7EECFF
    elseif (percent < 80) then
        color = "<lightGreen1>";     -- |C2C6BEBFF
    elseif (percent < 90) then
        color = "<lightGreen2>";     -- |C2D59E9FF
    end
    return color;
end
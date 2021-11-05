------------------------------------------------------------------------------------------------------
-- Fill meta info about mod --
------------------------------------------------------------------------------------------------------
local function spell(code, length, type)
    return { ID = nil; Rank = nil; CastTime = nil; Mana = nil; Code = "CRYOLYSIS_SPELL_TABLE_"..code; Length = length; Type = type }
end

function CryolysisUtils:SpellTable()
    -- Type 0 = No Timer
    -- Type 1 = Principle permanent timer
    -- Type 2 = permanent timer
    -- Type 3 = Cooldown Timer
    -- Type 4 = Debuff Timer
    -- Type 5 = Combat Timer
    -- Type 6 = Non-cast debuff.  Not to be removed by normal means

    local table = {
        [1] = spell("1", 600, 0),
        [2] = spell("2", 3600, 0),
        [3] = spell("3", 0, 0),
        [4] = spell("4", 1800, 0),
        [5] = spell("5", 0, 0),
        [6] = spell("6", 45, 3),
        [7] = spell("7", 15, 3),
        [8] = spell("8", 0, 0),
        [9] = spell("9", 10, 3),
        [10] = spell("10", 0, 0),
        [11] = spell("11", 0, 0),
        [12] = spell("12", 30, 3),
        [13] = spell("13", 600, 0),
        [14] = spell("14", 8, 3),
        [15] = spell("15", 30, 3),
        [16] = spell("16", 8, 5),
        [17] = spell("17", 8, 3),
        [18] = spell("18", 300, 0),
        [19] = spell("19", 25, 3),
        [20] = spell("20", 30, 3),
        [21] = spell("21", 9, 5),
        [22] = spell("22", 300, 0),
        [23] = spell("23", 30, 3),
        [24] = spell("24", 300, 0),
        [25] = spell("25", 60, 0),
        [26] = spell("26", 50, 2),
        [27] = spell("27", 0, 0),
        [28] = spell("28", 0, 0),
        [29] = spell("29", 0, 0),
        [30] = spell("30", 0, 0),
        [31] = spell("31", 0, 0),
        [32] = spell("32", 12, 5),
        [33] = spell("33", 0, 0),
        [34] = spell("34", 0, 0),
        [35] = spell("35", 30, 0),
        [36] = spell("36", 0, 0),
        [37] = spell("37", 0, 0),
        [38] = spell("38", 0, 0),
        [39] = spell("39", 0, 0),
        [40] = spell("40", 0, 0),
        [41] = spell("41", 300, 3),
        [42] = spell("42", 600, 3),
        [43] = spell("43", 180, 3),
        [44] = spell("44", 180, 3),
        [45] = spell("45", 180, 3),
        [46] = spell("46", 0, 0),
        [47] = spell("47", 50, 2),
        [48] = spell("48", 480, 3),
        [49] = spell("49", 120, 5),
        [50] = spell("50", 0, 0),
        [51] = spell("51", 50, 2),
        [52] = spell("52", 5, 6),
        [53] = spell("53", 15, 6),
        [54] = spell("54", 15, 6),
        [55] = spell("55", 15, 6),
        [56] = spell("56", 15, 6),
        [57] = spell("57", 15, 6),
        [58] = spell("58", 30, 6),
        [59] = spell("59", 30, 6),
        [60] = spell("60", 30, 6),
        [61] = spell("61", 30, 6),
        [62] = spell("62", 30, 6),
        [63] = spell("63", 120, 3),
        [64] = spell("64", 5, 6),
        [65] = spell("65", 8, 6),
        [66] = spell("66", 15, 6)
    }
    return table
end

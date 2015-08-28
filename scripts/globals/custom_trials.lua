-----------------------------------
-- Functions for LegionDS custom trials content
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/spoofchat");
-----------------------------------

-- ID Tables..
-- ..I could have put these tables inside yet another
--  table but these loops are complex enough..

RELIC =
{
    -- Item              Stage1       Stage2       Stage3       Stage4       Final
    ["AEGIS"] =         {[1] = 15070, [2] = 16196, [3] = 16198, [4] = 11927, [5] = 16200},
    ["AMANOMURAKUMO"] = {[1] = 18318, [2] = 18646, [3] = 18674, [4] = 19755, [5] = 21016},
    ["ANNIHILATOR"] =   {[1] = 18336, [2] = 18649, [3] = 18677, [4] = 19758, [5] = 21261},
    ["APOCALYPSE"] =    {[1] = 18306, [2] = 18644, [3] = 18672, [4] = 19753, [5] = 20881},
    ["BRAVURA"] =       {[1] = 18294, [2] = 18642, [3] = 18670, [4] = 19751, [5] = 20836},
    ["CLAUSTRUM"] =     {[1] = 18330, [2] = 18648, [3] = 18676, [4] = 19757, [5] = 21136},
    ["EXCALIBUR"] =     {[1] = 18276, [2] = 18639, [3] = 18667, [4] = 19748, [5] = 20646},
    ["GJALLARHORN"] =   {[1] = 18342, [2] = 18578, [3] = 18580, [4] = 18572, [5] = 18840},
    ["GUNGNIR"] =       {[1] = 18300, [2] = 18643, [3] = 18671, [4] = 19752, [5] = 20962},
    ["GUTTLER"] =       {[1] = 18288, [2] = 18641, [3] = 18669, [4] = 19750, [5] = 20791},
    ["KIKOKU"] =        {[1] = 18312, [2] = 18645, [3] = 18673, [4] = 19754, [5] = 20971},
    ["MANDAU"] =        {[1] = 18270, [2] = 18638, [3] = 18666, [4] = 19747, [5] = 20556},
    ["MJOLLNIR"] =      {[1] = 18324, [2] = 18647, [3] = 18675, [4] = 19756, [5] = 21061},
    ["RAGNAROK"] =      {[1] = 18282, [2] = 18640, [3] = 18668, [4] = 19749, [5] = 20746},
    ["SPHARAI"] =       {[1] = 18264, [2] = 18637, [3] = 18665, [4] = 19746, [5] = 20481},
    ["YOICHINOYUMI"] =  {[1] = 18348, [2] = 18650, [3] = 18678, [4] = 19759, [5] = 21211},
};

MYTHIC =
{
    -- Item              Stage1       Stage2       Stage3       Stage4       Final
    ["AYMUR"] =         {[1] = 18999, [2] = 19088, [3] = 19718, [4] = 19827, [5] = 20793},
    ["BURTGANG"] =      {[1] = 18997, [2] = 19086, [3] = 19716, [4] = 19825, [5] = 20650},
    ["CARNWENHAN"] =    {[1] = 19000, [2] = 19089, [3] = 19719, [4] = 19828, [5] = 20562},
    ["CONQUEROR"] =     {[1] = 18991, [2] = 19080, [3] = 19710, [4] = 19819, [5] = 20838},
    ["DEATH_PENALTY"] = {[1] = 19007, [2] = 19096, [3] = 19726, [4] = 19835, [5] = 21263},
    ["GASTRAPHETES"] =  {[1] = 19001, [2] = 19090, [3] = 19720, [4] = 19829, [5] = 21247},
    ["GLANZFAUST"] =    {[1] = 18992, [2] = 19081, [3] = 19711, [4] = 19820, [5] = 20483},
    ["KOGARASUMARU"] =  {[1] = 19002, [2] = 19091, [3] = 19721, [4] = 19830, [5] = 21018},
    ["LAEVATEINN"] =    {[1] = 18994, [2] = 19083, [3] = 19713, [4] = 19822, [5] = 21140},
    ["LIBERATOR"] =     {[1] = 18998, [2] = 19087, [3] = 19717, [4] = 19826, [5] = 20883},
    ["MURGLEIS"] =      {[1] = 18995, [2] = 19084, [3] = 19714, [4] = 19823, [5] = 20648},
    ["NAGI"] =          {[1] = 19003, [2] = 19092, [3] = 19722, [4] = 19831, [5] = 20973},
    ["NIRVANA"] =       {[1] = 19005, [2] = 19094, [3] = 19724, [4] = 19962, [5] = 21142},
    ["RYUNOHIGE"] =     {[1] = 19004, [2] = 19093, [3] = 19723, [4] = 19832, [5] = 20928},
    ["TERPSICHORE"] =   {[1] = 18989, [2] = 19098, [3] = 19728, [4] = 19837, [5] = 20558},
    ["TIZONA"] =        {[1] = 19006, [2] = 19095, [3] = 19725, [4] = 19834, [5] = 20652},
    ["TUPSIMATI"] =     {[1] = 18990, [2] = 19099, [3] = 19729, [4] = 19838, [5] = 21138},
    ["VAJRA"] =         {[1] = 18996, [2] = 19085, [3] = 19715, [4] = 19824, [5] = 20560},
    ["YAGRUSH"] =       {[1] = 18993, [2] = 19082, [3] = 19712, [4] = 19821, [5] = 21063},
};

--[[ Other?
Also just FYI, we can have more or fewer than 5 stages without problems.

WHATEVER =
{
    -- Item         Stage1      Stage2      etc.
    -- ["NAME"] =  {[1] = ID_1, [2] = ID_1, [3] = ID_1},
};
MAX_WHATEVER = 3;
]]

-----------------------------------
-- Returns the current Trial stage
-- in the specified table.
-----------------------------------
function getCurrentStage(itemTable, itemID)
    local CURRENT = 0;
    for a, b in pairs(itemTable) do
        for c, bb in pairs(b) do
            if (bb == itemID) then
                CURRENT = c;
            end
        end
    end

    return CURRENT;
end;

-----------------------------------
-- Returns the itemID of the next
-- trial stage for current itemID
-----------------------------------
function getNextTrialID(itemTable, itemID)
    local NEXT_ID = 0;
    for i, o in pairs(itemTable) do
        for u, oo in pairs(o) do
            if (oo == itemID) then
                NEXT_ID = o[u + 1];
            end
        end
    end
    -- If we somehow checked one that doesn't have any
    -- "next" ID we'll return the itemID we started with.
    return NEXT_ID;
end;

-----------------------------------
-- Checks if a Trial item is equipped
-----------------------------------
function cTrialItemEquipped(player)
    local TRIAL = player:getVar("C_TRIAL_ITEM");
    -- local TRIAL2 = player:getVar("C_TRIAL2_ITEM"); <- for future use
    local MAIN = player:getEquipID(SLOT_MAIN);
    local SUB = player:getEquipID(SLOT_SUB);
    local RANGED = player:getEquipID(SLOT_RANGED);
    -- local HEAD = player:getEquipID(SLOT_HEAD);
    -- local BODY = player:getEquipID(SLOT_BODY);
    -- local HANDS = player:getEquipID(SLOT_HANDS);
    -- local LEGS = player:getEquipID(SLOT_LEGS);
    -- local FEET = player:getEquipID(SLOT_FEET);

    if (TRIAL == 0 or TRIAL == nil) then
        return false;
    end

    if (MAIN == TRIAL or SUB == TRIAL or RANGED == TRIAL) then
        return true;
    else
        return false;
    end
end;

-----------------------------------
-- Checks objective counts and if
-- appropriate sets completion var
-----------------------------------
function cTrialProgress(player, itemTable)
    local TRIAL = player:getVar("C_TRIAL_ITEM");
    -- local TRIAL2 = player:getVar("C_TRIAL2_ITEM"); <- for future use
    -- This whole function could have been done better. But am tired.
    -- Should define the required totals for each objective somewhere
    -- and then check the vars against that instead of all this if/else'ing.
    if (itemTable == RELIC) then
        if (getCurrentStage(RELIC, TRIAL) == 0 or getCurrentStage(RELIC, TRIAL) == nil) then
            player:PrintToPlayer("Error: Trial item stage check returned zero or nil. Please report this message.");
        elseif (getCurrentStage(RELIC, TRIAL) == 1) then
            if (player:getVar("C_TRIAL_OBJ_1") >= 4
            and player:getVar("C_TRIAL_OBJ_2") >= 4
            and player:getVar("C_TRIAL_OBJ_3") >= 3
            and player:getVar("C_TRIAL_OBJ_4") >= 4
            and player:getVar("C_TRIAL_OBJ_5") >= 4
            and player:getVar("C_TRIAL_OBJ_6") >= 4) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            else
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            end
        elseif (getCurrentStage(RELIC, TRIAL) == 2) then
            if (player:getVar("C_TRIAL_OBJ_1") >= 7
            and player:getVar("C_TRIAL_OBJ_2") >= 7
            and player:getVar("C_TRIAL_OBJ_3") >= 7) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            else
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            end
        elseif (getCurrentStage(RELIC, TRIAL) == 3) then
            if (player:getVar("C_TRIAL_OBJ_1") >= 4
            and player:getVar("C_TRIAL_OBJ_2") >= 4
            and player:getVar("C_TRIAL_OBJ_3") >= 4
            and player:getVar("C_TRIAL_OBJ_4") >= 4
            and player:getVar("C_TRIAL_OBJ_5") >= 4) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            else
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            end
        --[[ Temp disabled, handled in Magian_Mog_CJ.lua for now
        elseif (getCurrentStage(RELIC, TRIAL) == 4) then
            if (player:getVar("C_TRIAL_OBJ_1") == 50) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            elseif (player:getVar("C_TRIAL_OBJ_1") < 50) then
                -- Not done yet, need more souls..I mean Tanzenites.
                player:SpoofChatPlayer(string.format("%s more to go."), MESSAGE_ECHO, 50 -player:getVar("C_TRIAL_COMPLETE"));
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            elseif (player:getVar("C_TRIAL_OBJ_1") > 50) then
                player:PrintToPlayer("Error: trial variable overloaded, Please report this message.");
                player:PrintToPlayer("Error Info: C_TRIAL_OBJ_1 > 50 in Moogle script L48");
            end
        ]]
        end
    elseif (itemTable == MYTHIC) then
        if (getCurrentStage(MYTHIC, TRIAL) == 0 or getCurrentStage(MYTHIC, TRIAL) == nil) then
            player:PrintToPlayer("Error: Trial item stage check returned zero or nil. Please report this message.");
        elseif (getCurrentStage(MYTHIC, TRIAL) == 1) then
            if (player:getVar("C_TRIAL_OBJ_1") >= 5
            and player:getVar("C_TRIAL_OBJ_2") >= 5
            and player:getVar("C_TRIAL_OBJ_3") >= 5
            and player:getVar("C_TRIAL_OBJ_4") >= 5
            and player:getVar("C_TRIAL_OBJ_5") >= 5
            and player:getVar("C_TRIAL_OBJ_6") >= 5) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            else
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            end
        elseif (getCurrentStage(MYTHIC, TRIAL) == 2) then
            if (player:getVar("C_TRIAL_OBJ_1") >= 4
            and player:getVar("C_TRIAL_OBJ_2") >= 4
            and player:getVar("C_TRIAL_OBJ_3") >= 4
            and player:getVar("C_TRIAL_OBJ_4") >= 4) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            else
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            end
        elseif (getCurrentStage(MYTHIC, TRIAL) == 3) then
            if (player:getVar("C_TRIAL_OBJ_1") >= 3
            and player:getVar("C_TRIAL_OBJ_2") >= 3
            and player:getVar("C_TRIAL_OBJ_3") >= 3
            and player:getVar("C_TRIAL_OBJ_4") >= 3
            and player:getVar("C_TRIAL_OBJ_5") >= 3
            and player:getVar("C_TRIAL_OBJ_6") >= 3) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            else
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            end
        --[[ Temp disabled, handled in Magian_Mog_CJ.lua for now
        elseif (getCurrentStage(MYTHIC, TRIAL) == 4) then
            if (player:getVar("C_TRIAL_OBJ_1") == 50) then
                player:setVar("C_TRIAL_COMPLETE", 1);
                player:SpoofChatPlayer("All Trial objectives complete!", MESSAGE_ECHO, nil);
            elseif (player:getVar("C_TRIAL_OBJ_1") < 50) then
                -- Not done yet, need more souls..I mean Tanzenites.
                player:SpoofChatPlayer(string.format("%s more to go."), MESSAGE_ECHO, 50 -player:getVar("C_TRIAL_COMPLETE"));
                player:SpoofChatPlayer("You completed a trial objective.", MESSAGE_ECHO, nil);
            elseif (player:getVar("C_TRIAL_OBJ_1") > 50) then
                player:PrintToPlayer("Error: trial variable overloaded, Please report this message.");
                player:PrintToPlayer("Error Info: C_TRIAL_OBJ_1 > 50 in Moogle script L48");
            end
        ]]
        end
    end
end;

-----------------------------------
-- Handles Trial completion:
-- item upgrade and var cleanup
-----------------------------------
function cTrialEnd(player)
    local REWARD = 0;
    local TRIAL = player:getVar("C_TRIAL_ITEM");
    local TextIDs = "scripts/zones/" .. player:getZoneName() .. "/TextIDs";
    package.loaded[TextIDs] = nil;
    require(TextIDs);

    if (getNextTrialID(RELIC, TRIAL) > 0) then
        REWARD = getNextTrialID(RELIC, TRIAL);
    elseif (getNextTrialID(MYTHIC, TRIAL) > 0) then
        REWARD = getNextTrialID(MYTHIC, TRIAL);
    end

    if (REWARD > 0) then
        if (player:getFreeSlotsCount() >= 1) then
            player:tradeComplete();
            player:addItem(REWARD);
            player:messageSpecial(ITEM_OBTAINED, REWARD);
            cTrialCleanUp(player);
        else
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, REWARD);
        end
    else
        player:PrintToPlayer("Error: cTrialEnd() was called on an invalid Trial ID. Please report this message.");
    end
end;

-----------------------------------
-- Handles Trial var cleanup
-----------------------------------
function cTrialCleanUp(player)
    player:setVar("C_TRIAL_ITEM", 0);
    player:setVar("C_TRIAL_OBJ_1", 0);
    player:setVar("C_TRIAL_OBJ_2", 0);
    player:setVar("C_TRIAL_OBJ_3", 0);
    player:setVar("C_TRIAL_OBJ_4", 0);
    player:setVar("C_TRIAL_OBJ_5", 0);
    player:setVar("C_TRIAL_OBJ_6", 0);
    player:setVar("C_TRIAL_COMPLETE", 0);
end

-----------------------------------
-- Temp! This will be removed later
-----------------------------------
function nukeOldTrialVars(player)
    if (player:getVar("CustomTrial") ~= 0 and player:getVar("C_TRIAL_ITEM") == 0) then
        player:setVar("C_TRIAL_ITEM", player:getVar("CustomTrial"));
        player:setVar("CustomTrial", 0);
    end

    if (player:getVar("TRIAL_COMPLETE") > player:getVar("C_TRIAL_COMPLETE")) then
        player:setVar("C_TRIAL_COMPLETE", player:getVar("TRIAL_COMPLETE"));
        player:setVar("TRIAL_COMPLETE", 0);
    end

    if (player:getVar("Seww_the_Squidlimbed_KILLS") > player:getVar("C_TRIAL_OBJ_1")) then
        player:setVar("C_TRIAL_OBJ_1", player:getVar("Seww_the_Squidlimbed_KILLS"));
        player:setVar("Seww_the_Squidlimbed_KILLS", 0);
    end
    if (player:getVar("Megalobugard_KILLS") > player:getVar("C_TRIAL_OBJ_2")) then
        player:setVar("C_TRIAL_OBJ_2", player:getVar("Megalobugard_KILLS"));
        player:setVar("Megalobugard_KILLS", 0);
    end
    if (player:getVar("Dune_Widow_KILLS") > player:getVar("C_TRIAL_OBJ_3")) then
        player:setVar("C_TRIAL_OBJ_3", player:getVar("Dune_Widow_KILLS"));
        player:setVar("Dune_Widow_KILLS", 0);
    end
    if (player:getVar("Mischievous_Micholas_KILLS") > player:getVar("C_TRIAL_OBJ_4")) then
        player:setVar("C_TRIAL_OBJ_4", player:getVar("Mischievous_Micholas_KILLS"));
        player:setVar("Mischievous_Micholas_KILLS", 0);
    end
    if (player:getVar("Intulo_KILLS") > player:getVar("C_TRIAL_OBJ_5")) then
        player:setVar("C_TRIAL_OBJ_5", player:getVar("Intulo_KILLS"));
        player:setVar("Intulo_KILLS", 0);
    end
    if (player:getVar("Keeper_of_Halidom_KILLS") > player:getVar("C_TRIAL_OBJ_6")) then
        player:setVar("C_TRIAL_OBJ_6", player:getVar("Keeper_of_Halidom_KILLS"));
        player:setVar("Keeper_of_Halidom_KILLS", 0);
    end

    if (player:getVar("Adamantoise_KILLS") > player:getVar("C_TRIAL_OBJ_1")) then
        player:setVar("C_TRIAL_OBJ_1", player:getVar("Adamantoise_KILLS"));
        player:setVar("Adamantoise_KILLS", 0);
    end
    if (player:getVar("Behemoth_KILLS") > player:getVar("C_TRIAL_OBJ_2")) then
        player:setVar("C_TRIAL_OBJ_2", player:getVar("Behemoth_KILLS"));
        player:setVar("Behemoth_KILLS", 0);
    end
    if (player:getVar("Fafnir_KILLS") > player:getVar("C_TRIAL_OBJ_3")) then
        player:setVar("C_TRIAL_OBJ_3", player:getVar("Fafnir_KILLS"));
        player:setVar("Fafnir_KILLS", 0);
    end

    if (player:getVar("Juggler_Hecatomb_KILLS") > player:getVar("C_TRIAL_OBJ_1")) then
        player:setVar("C_TRIAL_OBJ_1", player:getVar("Juggler_Hecatomb_KILLS"));
        player:setVar("Juggler_Hecatomb_KILLS", 0);
    end
    if (player:getVar("Ash_Dragon_KILLS") > player:getVar("C_TRIAL_OBJ_2")) then
        player:setVar("C_TRIAL_OBJ_2", player:getVar("Ash_Dragon_KILLS"));
        player:setVar("Ash_Dragon_KILLS", 0);
    end
    if (player:getVar("Aspidochelone_KILLS") > player:getVar("C_TRIAL_OBJ_3")) then
        player:setVar("C_TRIAL_OBJ_3", player:getVar("Aspidochelone_KILLS"));
        player:setVar("Aspidochelone_KILLS", 0);
    end
    if (player:getVar("King_Behemoth_KILLS") > player:getVar("C_TRIAL_OBJ_4")) then
        player:setVar("C_TRIAL_OBJ_4", player:getVar("King_Behemoth_KILLS"));
        player:setVar("King_Behemoth_KILLS", 0);
    end
    if (player:getVar("Nidhogg_KILLS") > player:getVar("C_TRIAL_OBJ_5")) then
        player:setVar("C_TRIAL_OBJ_5", player:getVar("Nidhogg_KILLS"));
        player:setVar("Nidhogg_KILLS", 0);
    end

    if (player:getVar("Brass_Borer_KILLS") > player:getVar("C_TRIAL_OBJ_1")) then
        player:setVar("C_TRIAL_OBJ_1", player:getVar("Brass_Borer_KILLS"));
        player:setVar("Brass_Borer_KILLS", 0);
    end
    if (player:getVar("Iriz_Irma_KILLS") > player:getVar("C_TRIAL_OBJ_2")) then
        player:setVar("C_TRIAL_OBJ_2", player:getVar("Iriz_Irma_KILLS"));
        player:setVar("Iriz_Irma_KILLS", 0);
    end
    if (player:getVar("Velionis_KILLS") > player:getVar("C_TRIAL_OBJ_3")) then
        player:setVar("C_TRIAL_OBJ_3", player:getVar("Velionis_KILLS"));
        player:setVar("Velionis_KILLS", 0);
    end
    if (player:getVar("Zareehkl_the_Jubilant_KILLS") > player:getVar("C_TRIAL_OBJ_4")) then
        player:setVar("C_TRIAL_OBJ_4", player:getVar("Zareehkl_the_Jubilant_KILLS"));
        player:setVar("Zareehkl_the_Jubilant_KILLS", 0);
    end
    if (player:getVar("Dextrose_KILLS") > player:getVar("C_TRIAL_OBJ_5")) then
        player:setVar("C_TRIAL_OBJ_5", player:getVar("Dextrose_KILLS"));
        player:setVar("Dextrose_KILLS", 0);
    end
    if (player:getVar("Iriri_Samariri_KILLS") > player:getVar("C_TRIAL_OBJ_6")) then
        player:setVar("C_TRIAL_OBJ_6", player:getVar("Iriri_Samariri_KILLS"));
        player:setVar("Iriri_Samariri_KILLS", 0);
    end

    if (player:getVar("Achamoth_KILLS") > player:getVar("C_TRIAL_OBJ_1")) then
        player:setVar("C_TRIAL_OBJ_1", player:getVar("Achamoth_KILLS"));
        player:setVar("Achamoth_KILLS", 0);
    end
    if (player:getVar("Armed_Gears_KILLS") > player:getVar("C_TRIAL_OBJ_2")) then
        player:setVar("C_TRIAL_OBJ_2", player:getVar("Armed_Gears_KILLS"));
        player:setVar("Armed_Gears_KILLS", 0);
    end
    if (player:getVar("Nosferatu_KILLS") > player:getVar("C_TRIAL_OBJ_3")) then
        player:setVar("C_TRIAL_OBJ_3", player:getVar("Nosferatu_KILLS"));
        player:setVar("Nosferatu_KILLS", 0);
    end
    if (player:getVar("Experimental_Lamia_KILLS") > player:getVar("C_TRIAL_OBJ_4")) then
        player:setVar("C_TRIAL_OBJ_4", player:getVar("Experimental_Lamia_KILLS"));
        player:setVar("Experimental_Lamia_KILLS", 0);
    end

    if (player:getVar("Hydra_KILLS") > player:getVar("C_TRIAL_OBJ_1")) then
        player:setVar("C_TRIAL_OBJ_1", player:getVar("Hydra_KILLS"));
        player:setVar("Hydra_KILLS", 0);
    end
    if (player:getVar("Cerberus_KILLS") > player:getVar("C_TRIAL_OBJ_2")) then
        player:setVar("C_TRIAL_OBJ_2", player:getVar("Cerberus_KILLS"));
        player:setVar("Cerberus_KILLS", 0);
    end
    if (player:getVar("Khimara_KILLS") > player:getVar("C_TRIAL_OBJ_3")) then
        player:setVar("C_TRIAL_OBJ_3", player:getVar("Khimara_KILLS"));
        player:setVar("Khimara_KILLS", 0);
    end
    if (player:getVar("Gulool_Ja_Ja_KILLS") > player:getVar("C_TRIAL_OBJ_4")) then
        player:setVar("C_TRIAL_OBJ_4", player:getVar("Gulool_Ja_Ja_KILLS"));
        player:setVar("Gulool_Ja_Ja_KILLS", 0);
    end
    if (player:getVar("Gurfurlur_the_Menacing_KILLS") > player:getVar("C_TRIAL_OBJ_5")) then
        player:setVar("C_TRIAL_OBJ_5", player:getVar("Gurfurlur_the_Menacing_KILLS"));
        player:setVar("Gurfurlur_the_Menacing_KILLS", 0);
    end
    if (player:getVar("Medusa_KILLS") > player:getVar("C_TRIAL_OBJ_6")) then
        player:setVar("C_TRIAL_OBJ_6", player:getVar("Medusa_KILLS"));
        player:setVar("Medusa_KILLS", 0);
    end
end;
----------------------------------------------------------
--[[ This global is used to select one
    drop from many shared drops
    Example use:

    require("scripts/globals/custom_grouped_loot");

    function onMobDeath(mob, player, isKiller)
        if (isKiller) then
            -- select a random item from table 2..
            SelectUnweightedLootGroup(player, 2);
        end
    end;
]]
----------------------------------------------------------


--------------------------------------
-- Finds the tableID in outerTable and
-- returns and itemID from innerTable.
-- All items in group have equal chance.
--------------------------------------
function SelectUnweightedLootGroup(player, tableID)
    local outerTable =
    {
        --[[
        [tableID] =
        {
            {itemID}, -- Comment
            {itemID}  -- Comment
        },
        ]]
        [1] =
        {
            {itemID}, -- Comment
            {itemID}  -- Comment
        },
    }
    local innerTable = outerTable[tableID];
    return math.random(1,#innerTable);
end;

--------------------------------------
-- Finds the tableID in outerTable and
-- returns an itemID from innerTable
-- Item is chosen BY WEIGHT.
--------------------------------------
function SelectWeightedLootGroup(player, tableID)
    local outerTable =
    {
        --[[
        [tableID] =
        {
            {weight, itemID}, -- Comment
            {weight, itemID}  -- Comment
        },
        ]]
        [1] =
        {
            {weight, itemID}, -- Comment
            {weight, itemID}  -- Comment
        },
        [2] =
        {
            {weight, itemID}, -- Comment
            {weight, itemID}  -- Comment
        },
    }
    local innerTable = outerTable[tableID];
    local totalWeight = 0;

    for _, weight in ipairs(innerTable) do
        totalWeight = totalWeight + innerTable[weight][1];
    end

    local weightSelect = math.random(1, totalWeight);
    local thisItem = 0;

    for itemSelect, weight in ipairs(innerTable) do
        thisItem = thisItem+(innerTable[itemSelect][1]);
        if (weightSelect < thisItem) then
            return innerTable[itemSelect][2];
        end
    end
end;

-----------------------------------------
-- ID: 6180
-- Item: Pluton Case (6180)
-- When used, you will obtain a random number of plutons
-----------------------------------------

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;

    if (target:getFreeSlotsCount() == 0) then
        result = 308;
    end

    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:addItem(4059, math.random(3,15));
end;

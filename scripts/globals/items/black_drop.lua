-----------------------------------------
--  ID: 4265
--  Item: Black Drop
-----------------------------------------
--  Transports the user to their Home Point
-----------------------------------------
require("scripts/globals/conquest");
require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    --[[
    if (target:hasStatusEffect(EFFECT_MEDICINE)) then
        result = 111;
    end
    ]]
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    --[[
    target:warp();
    target:addStatusEffect(EFFECT_MEDICINE,0,0,3600);
    ]]
    toHomeNation(target);
end;
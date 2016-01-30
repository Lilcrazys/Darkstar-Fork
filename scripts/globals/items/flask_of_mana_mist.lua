-----------------------------------------
-- ID: 5833
-- Item: Flask of Mana Mist
-- Item Effect: Restores 300 MP AoE 10' radius
-----------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;

    if (target:getMP() == target:getMaxMP()) then
        result = 56; -- Does not let player use item if their MP is full
    end

    if (target:hasStatusEffect(EFFECT_MEDICINE)) then
        result = 111;
    end

    return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
    target:messageBasic(25,0,target:addMP(300);
end;
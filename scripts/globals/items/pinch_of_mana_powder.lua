-----------------------------------------
-- ID: 4255
-- Item: Pinch of Mana Powder
-- Item Effect: Restores 25% MP AoE 10' radius
-----------------------------------------

require("scripts/globals/settings");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;

    if (target:getMP() == target:getMaxMP()) then
        result = 56; -- Does not let player use item if their mp is full
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
    target:messageBasic(25,0,target:addMP(target:getMaxMP()*0.25));
end;
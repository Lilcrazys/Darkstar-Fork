-----------------------------------------
-- ID: 5322
-- Item: Flask of Healing Powder
-- Item Effect: Restores 25% HP AoE 10' radius
-----------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
    local result = 0;

    if (target:getHP() == target:getMaxHP()) then
        result = 56; -- Does not let player use item if their HP is full
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
    target:messageBasic(25,0,target:addHP(target:getMaxHP()*0.25));
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
end;
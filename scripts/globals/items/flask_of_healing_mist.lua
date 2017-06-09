-----------------------------------------
-- ID: 5832
-- Item: Flask of Healing Mist
-- Item Effect: Restores 600 HP AoE 10' radius
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
    target:messageBasic(25,0,target:addHP(600));
end;

-----------------------------------------
-- ID: 18095
-- Item: Dispel Couse
-- Enchantment: Sames as Dispel
-----------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------------

function onItemUse(target)
    if (target:dispelStatusEffect() == EFFECT_NONE) then
        skill:setMsg(msgBasic.NO_EFFECT);
    else
        skill:setMsg(msgBasic.DISPEL);
    end
end;

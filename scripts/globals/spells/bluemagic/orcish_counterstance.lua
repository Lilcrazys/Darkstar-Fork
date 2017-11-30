-----------------------------------
-- Spell: Orcish Counterstance
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local power = 50;
    if (target:addStatusEffect(EFFECT_COUNTERSTANCE,power,0,300) == false) then
       spell:setMsg(75);
    end
    return EFFECT_COUNTERSTANCE;
end;

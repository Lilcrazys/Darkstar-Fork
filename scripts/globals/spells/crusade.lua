-----------------------------------------
-- Spell: Crusade
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local duration = 300;
    local power = 30;

    if (target:addStatusEffect(EFFECT_ENMITY_BOOST,power,0,duration) == false) then
        spell:setMsg(msgBasic.MAGIC_NO_EFFECT);
    end

    return EFFECT_ENMITY_BOOST;
end;

-----------------------------------------
-- Spell: White Wind
-- HP healed is equal to floor(MaxHP/7)*2 and is affected by cure potency.
-- Potency is determined via maximum HP and not the caster's current HP.
-- This spell can be used with Divine Seal to increase the amount of HP restored.
-- This spell is also affected by Cure Potency equipment (eg: Light Staff, etc.) as well as Obis and weather.
-- However, this spell is not affect by Healing Magic Skill.
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
    local cure = math.floor(mob:getHP()/7)*2;
    cure = getCureFinal(caster,spell,cure,1,true);

    spell:setMsg(msgBasic.MAGIC_RECOVERS_HP);
    target:addHP(cure);
    target:wakeUp();
    caster:updateEnmityFromCure(target,cure);
    return cure;
end;
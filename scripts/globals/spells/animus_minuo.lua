-----------------------------------------
-- Spell: Animus Minuo
-- Suppresses enmity gain for target
-- party member.
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local power = -10;
    local duration = 180;

    target:addStatusEffect(EFFECT_PAX,power,0,duration);

    return EFFECT_PAX;
end;

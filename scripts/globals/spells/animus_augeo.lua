-----------------------------------------
-- Spell: Animus Augeo
-- Facilitates enmity gain for target
-- party member.
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local power = 20;
    local duration = 180;

    target:addStatusEffect(EFFECT_ENMITY_BOOST,power,0,duration);

    return EFFECT_ENMITY_BOOST;
end;

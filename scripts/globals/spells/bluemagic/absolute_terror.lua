-----------------------------------------
-- Spell: Absolute Terror
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
    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_TERROR;
    local resist = applyResistance(caster, target, spell, params);

    if (resist > 0.5) then
        target:addStatusEffect(params.effect,1,0,10);
    end

    return params.effect;
end;
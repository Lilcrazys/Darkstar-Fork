-----------------------------------------
-- Spell: Blistering Roar
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    if caster:hasStatusEffect(EFFECT_UNBRIDLED_LEARNING) then
        return 0;
    else
        return chatType.STATUS_PREVENTS;
    end
end;

function onSpellCast(caster,target,spell)
    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_TERROR;
    local resist = applyResistance(caster, target, spell, params);

    if (resist > 0.25) then
        target:addStatusEffect(params.effect,1,0,10);
    end

    return params.effect;
end;
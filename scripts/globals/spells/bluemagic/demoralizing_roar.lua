-----------------------------------------
-- Spell: Demoralizing Roar
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
    params.attribute = MOD_MND;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_ATTACK_DOWN;
    local resist = applyResistance(caster, target, spell, params);

    if (resist > (0.0652)) then
        spell:setMsg(msgBasic.MAGIC_RESIST);
        return 0;
    end

    if (target:hasStatusEffect(params.effect)) then
        spell:setMsg(msgBasic.MAGIC_NO_EFFECT);
    else
        target:addStatusEffect(params.effect,20,0,60);
        spell:setMsg(msgBasic.MAGIC_ENFEEB_IS);
    end

    return params.effect;
end;

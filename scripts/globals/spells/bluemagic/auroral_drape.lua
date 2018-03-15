-----------------------------------------
-- Spell: Auroral Drape
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
    local effect = EFFECT_NONE;
    local params = {};
    params.attribute = MOD_INT;
    params.effect = EFFECT_BLINDNESS;
    local BLIND_RES = applyResistance(caster, target, spell, params);
    params.attribute = MOD_MND;
    params.effect = EFFECT_SILENCE;
    local SILENCE_RES = applyResistance(caster, target, spell, params);
    params.skillType = BLUE_SKILL;

    if (target:hasStatusEffect(EFFECT_BLINDNESS) and target:hasStatusEffect(EFFECT_SILENCE)) then
        spell:setMsg(msgBasic.MAGIC_NO_EFFECT); -- No effect.
        return EFFECT_NONE;
    else
        local MSG = msgBasic.MAGIC_RESIST; -- Will be used if both effects are resisted.

        if (BLIND_RES > 0.125) then
            target:addStatusEffect(EFFECT_BLINDNESS,60,0,60);
            effect = EFFECT_BLINDNESS;
            MSG = msgBasic.MAGIC_ENFEEB; -- Landed it.
        end

        if (SILENCE_RES > 0.125) then
            target:addStatusEffect(EFFECT_SILENCE,20,0,60);
            effect = EFFECT_SILENCE;
            MSG = msgBasic.MAGIC_ENFEEB; -- Landed it.
        end

        spell:setMsg(MSG);

        return effect;
    end
end;

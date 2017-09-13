-----------------------------------------
-- Spell: Auroral Drape
-----------------------------------------

require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local effect = EFFECT_NONE;
    local dINT = caster:getStat(MOD_INT) - target:getStat(MOD_INT);
    -- The 2 effects roll their resistance separately..
    local BLIND_RES = applyResistanceEffect(caster,spell,target,dINT,BLUE_SKILL,0,EFFECT_BLINDNESS);
    local SILENCE_RES = applyResistanceEffect(caster,spell,target,dINT,BLUE_SKILL,0,EFFECT_SILENCE);

    if (target:hasStatusEffect(EFFECT_BLINDNESS) and target:hasStatusEffect(EFFECT_SILENCE)) then
        spell:setMsg(75); -- No effect.
        return EFFECT_NONE;
    else
        local MSG = 85; -- Will be used if both effects are resited.

        if (BLIND_RES > 0.125) then
            target:addStatusEffect(EFFECT_BLINDNESS,60,0,60);
            effect = EFFECT_BLINDNESS;
            MSG = 237; -- Landed it.
        end

        if (SILENCE_RES > 0.125) then
            target:addStatusEffect(EFFECT_SILENCE,20,0,60);
            effect = EFFECT_SILENCE;
            MSG = 237; -- Landed it.
        end

        spell:setMsg(MSG);

        return effect;
    end
end;
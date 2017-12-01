-----------------------------------
-- Spell: Nature's Meditation
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster, target, spell)
    local power = 100; -- Percentage, not amount.
    local duration = 60;

    if (caster:hasStatusEffect(EFFECT_DIFFUSION)) then
        local diffMerit = caster:getMerit(MERIT_DIFFUSION);

        if (diffMerit > 0) then
            duration = duration + (duration/100)* diffMerit;
        end

        caster:delStatusEffect(EFFECT_DIFFUSION);
    end

    if (target:addStatusEffect(EFFECT_ATTACK_BOOST,power,0,duration)) then
        spell:setMsg(msgBasic.MAGIC_GAIN_EFFECT);
    else
        spell:setMsg(msgBasic.MAGIC_NO_EFFECT);
    end

    return EFFECT_ATTACK_BOOST;
end;

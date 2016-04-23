-----------------------------------------
-- Spell: Dream Flower
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- onMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
    local typeEffect = EFFECT_SLEEP_II;
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    local resist = applyResistanceEffect(caster,spell,target,dINT,BLUE_SKILL,0,typeEffect);
    local duration = 120 * resist;

    if (resist > 0.5) then
        if (target:addStatusEffect(typeEffect,1,0,duration)) then
            spell:setMsg(236); -- Landed it.
        else
            spell:setMsg(75); -- Already slept
        end
    else
        spell:setMsg(85); -- Resisted
    end;

    return typeEffect;
end;

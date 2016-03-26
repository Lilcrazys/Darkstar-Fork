-----------------------------------------
-- Spell: Poisonga V
-----------------------------------------

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
    local effect = EFFECT_POISON;
    local duration = 180;
    local pINT = caster:getStat(MOD_INT);
    local mINT = target:getStat(MOD_INT);
    local dINT = (pINT - mINT);
    local resist = applyResistanceEffect(caster,spell,target,dINT,ENFEEBLING_MAGIC_SKILL,0,effect);
    local power = caster:getSkillLevel(ENFEEBLING_MAGIC_SKILL) / 6 + 1;

    if (power > 80) then
        power = 80;
    end

    if (resist == 1 or resist == 0.5) then -- effect taken
        duration = duration * resist;
        if (target:addStatusEffect(effect,power,3,duration)) then
            spell:setMsg(236);
        else
            spell:setMsg(75);
        end
    else -- resist entirely.
        spell:setMsg(85);
    end

    return effect;
end;

-----------------------------------------
-- Spell: Mortal Ray
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
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
    local resist = applyResistance(caster,spell,target,dINT,BLUE_SKILL,bonus);

    if (target:isNM()) then -- Immune, cannot Doom NMs
        spell:setMsg(75);
    elseif (resist < 1) then -- Resisted
        spell:setMsg(85);
    else
        if (target:addStatusEffect(EFFECT_DOOM,10, 3, 30)) then
            spell:setMsg(237);
        else
            spell:setMsg(75); -- Already inflicted
        end
    end

    return EFFECT_DOOM;
end;

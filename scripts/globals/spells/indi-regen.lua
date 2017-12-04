-----------------------------------------
-- Spell: Indi-Regen
-- Gradually restores party's HP.
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    if (caster:isPC()) then
        caster:PrintToPlayer("Spell non working, staff is aware.");
    end
    return 1;
end;

function onSpellCast(caster,target,spell)
    --[[
    local hp = 1;

    hp = hp + caster:getLvl(JOBS.GEO) >+1;

    if (target:addStatusEffect(EFFECT_REGEN,hp,3,360)) then
        spell:setMsg(230);
    else
        spell:setMsg(75); -- no effect
    end

    return EFFECT_REGEN;
    ]]
    return 0;
end;

-----------------------------------------
-- Spell: Fire Carol II
-- MOD_FIRERES
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
    -- return handleCarol(caster, target, spell, 50, 120, MOD_FIRERES);
    return 0;
end;

-----------------------------------------
-- Spell: Earth Carol II
-- MOD_EARTHRES
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 1;
end;

function onSpellCast(caster,target,spell)
    -- return handleCarol(caster, target, spell, 50, 120, MOD_EARTHRES);
end;

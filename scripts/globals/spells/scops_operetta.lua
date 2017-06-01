-----------------------------------------
-- Spell: Jester's Opperetta
-- Increases Silence Resistance to
-- Party Members within target AoE
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 1;
end;

function onSpellCast(caster,target,spell)
end;
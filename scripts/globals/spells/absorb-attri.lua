--------------------------------------
-- Spell: Absorb-Attri
-- Steals an enemy's beneficial status effect.
--------------------------------------
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
    return 0;
end;

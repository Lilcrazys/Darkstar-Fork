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
    if (caster:isPC()) then
        caster PrintToPlayer("this spell is broken, and will be fixed soon");
    end
    return 1;
end;

-----------------------------------------
-- Spell: Tractor II
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

    -- target:setPos(caster:getXPos(), caster:getYPos(), caster:getZPos());

    return 0;
end;

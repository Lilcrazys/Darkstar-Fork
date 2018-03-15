-----------------------------------------
-- Spell: Jester's Opperetta
-- Increases Silence Resistance to
-- Party Members within target AoE
-----------------------------------------

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

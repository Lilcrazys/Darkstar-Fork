-----------------------------------------
-- Spell: Banish V
-- Deals light damage to an enemy.
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};
    params.dmg = 594;
    params.multiplier = 1.5;
    params.hasMultipleTargetReduction = false;
    params.resistBonus = 1.0;

    return doDivineBanishNuke(caster, target, spell, params);
end;

-----------------------------------------
-- Spell: Waterga V
-- Deals water damage to an enemy.
-----------------------------------------

require("scripts/globals/magic");
require("scripts/globals/status");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster, target, spell)
    local spellParams = {};
    spellParams.hasMultipleTargetReduction = false;
    spellParams.resistBonus = 1.0;
    spellParams.V0 = 1610;
    spellParams.V50 = 2254;
    spellParams.V100 = 2800;
    spellParams.V200 = 3000;
    spellParams.M0 = 6.6;
    spellParams.M50 = 5.74;
    spellParams.M100 = 4.95;
    spellParams.M200 = 3;

    return doElementalNuke(caster, spell, target, spellParams);
end;

-----------------------------------------
-- Spell: Thundaga V
-- Deals thunder damage to an enemy.
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
    spellParams.V0 = 1410;
    spellParams.V50 = 1600;
    spellParams.V100 = 2300;
    spellParams.V200 = 2500;
    spellParams.M0 = 5.6;
    spellParams.M50 = 4.74;
    spellParams.M100 = 3.95;
    spellParams.M200 = 3;

    return doElementalNuke(caster, spell, target, spellParams);
end;
-----------------------------------------
-- Spell: Banish
-- Deals light damage to an enemy.
-----------------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/abyssea");
-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	if caster:isPC() then
		local YellowTrigger = caster:getVar("YellowTrigger");
		if (YellowTrigger == 30) then
			WeaknessTriggerYellow(caster,target,spell);
		else
			if (math.random(4) == 1) then
				TriggerHintYELLOW(caster);
			end
		end
	end
	--doDivineBanishNuke(V,M,caster,spell,target,hasMultipleTargetReduction,resistBonus)
	local dmg = doDivineBanishNuke(198,1.5,caster,spell,target,false,1.0);
	return dmg;
end;
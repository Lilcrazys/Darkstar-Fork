-----------------------------------------
-- Spell: Kurayami:Ni
-----------------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/settings");
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
		if (YellowTrigger == 348) then
			WeaknessTriggerYellow(caster,target,spell);
		else
			if (math.random(4) == 1) then
				TriggerHintYELLOW(caster);
			end
		end
	end

	-- Base Stats
	local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));
	local bonus = AffinityBonus(caster, spell:getElement());
	--Duration Calculation
	local duration = 300 * applyResistance(caster,spell,target,dINT,NINJUTSU_SKILL,bonus);
	--Kurayami base power is 30 and is not affected by resistaces.
	local power = 30;

	--Calculates resist chanve from Reist Blind
	if(math.random(0,100) >= target:getMod(MOD_BLINDRES)) then
		if(duration >= 150) then

			if(target:addStatusEffect(EFFECT_BLINDNESS,power,0,duration)) then
				spell:setMsg(236);
			else
				spell:setMsg(75);
			end
		else
			spell:setMsg(85);
		end
	else
		spell:setMsg(284);
	end
	return EFFECT_BLINDNESS;
end;
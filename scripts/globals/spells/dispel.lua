-----------------------------------------
-- Spell: Dispel
-----------------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/settings");
require("scripts/globals/abyssea");
-----------------------------------------
function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	if caster:isPC() then
		local YellowTrigger = caster:getVar("YellowTrigger");
		if (YellowTrigger == 260) then
			WeaknessTriggerYellow(caster,target,spell);
		else
			if (math.random(4) == 1) then
				TriggerHintYELLOW(caster);
			end
		end
	end

    -- Pull base stats.
    local dINT = (caster:getStat(MOD_INT) - target:getStat(MOD_INT));

    local resist = applyResistance(caster,spell,target,dINT,ENFEEBLING_MAGIC_SKILL);
    local effect = EFFECT_NONE;

    if(resist > 0.0625) then
		spell:setMsg(341);
		effect = target:dispelStatusEffect();
		if(effect == EFFECT_NONE) then
			-- no effect
			spell:setMsg(75);
		end
	else
        spell:setMsg(85);
    end

    return effect;
end;

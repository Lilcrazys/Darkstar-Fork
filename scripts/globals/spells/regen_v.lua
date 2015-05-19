-----------------------------------------
-- Spell: Regen V
-- Gradually restores target's HP.
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- onMagicCastingCheck
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onSpellCast(caster,target,spell)
	local hp = 40;
	local duration = 60;
	local head = caster:getEquipID(SLOT_HEAD);
	local body = caster:getEquipID(SLOT_BODY);

	if (caster:hasStatusEffect(EFFECT_LIGHT_ARTS) then
		hp = 64;
		duration = 105;
		-- This is probably not retail accurate.
	end

	hp = hp + caster:getMod(MOD_REGEN_EFFECT); --Savant's Bonnet +2 adds 5
	duration = duration + caster:getMod(MOD_REGEN_DURATION);

	if (target:getMainLvl() < 21) then
		duration = duration * target:getMainLvl() / 21;
	end

	if (target:addStatusEffect(EFFECT_REGEN,hp,3,duration)) then
		spell:setMsg(230);
	else
		spell:setMsg(75); -- no effect
	end

	return EFFECT_REGEN;
end;
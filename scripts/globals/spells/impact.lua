-----------------------------------------
-- Spell: Impact
-- Deals dark damage to an enemy.
-----------------------------------------

require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/utils");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	local bonus = AffinityBonus(caster, spell:getElement());
	local dINT = caster:getStat(MOD_INT) - target:getStat(MOD_INT);
	local resist = applyResistance(caster,spell,target,dINT,37,bonus);
	local TargSTR = ((target:getStat(MOD_STR) / 100) * 20) * resist;
	local TargDEX = ((target:getStat(MOD_DEX) / 100) * 20) * resist;
	local TargVIT = ((target:getStat(MOD_VIT) / 100) * 20) * resist;
	local TargAGI = ((target:getStat(MOD_AGI) / 100) * 20) * resist;
	local TargINT = ((target:getStat(MOD_INT) / 100) * 20) * resist;
	local TargMND = ((target:getStat(MOD_MND) / 100) * 20) * resist;
	local TargCHR = ((target:getStat(MOD_CHR) / 100) * 20) * resist;
	local duration = 180 * resist;

	-- caster:PrintToPlayer( string.format( "STR: '%s' ", TargSTR ) );
	-- caster:PrintToPlayer( string.format( "DEX: '%s' ", TargDEX ) );
	-- caster:PrintToPlayer( string.format( "VIT: '%s' ", TargVIT ) );
	-- caster:PrintToPlayer( string.format( "AGI: '%s' ", TargAGI ) );
	-- caster:PrintToPlayer( string.format( "INT: '%s' ", TargINT ) );
	-- caster:PrintToPlayer( string.format( "MND: '%s' ", TargMND ) );
	-- caster:PrintToPlayer( string.format( "CHR: '%s' ", TargCHR ) );

	TargSTR = utils.clamp(TargSTR, 6, 66); -- Totally guessing at min/max range here.
	TargDEX = utils.clamp(TargDEX, 6, 66);
	TargVIT = utils.clamp(TargVIT, 6, 66);
	TargAGI = utils.clamp(TargAGI, 6, 66);
	TargINT = utils.clamp(TargINT, 6, 66);
	TargMND = utils.clamp(TargMND, 6, 66);
	TargCHR = utils.clamp(TargCHR, 6, 66);

	if (target:hasStatusEffect(EFFECT_STR_DOWN)) then
		target:delStatusEffectSilent(EFFECT_STR_DOWN);
	end
	if (target:hasStatusEffect(EFFECT_DEX_DOWN)) then
		target:delStatusEffectSilent(EFFECT_DEX_DOWN);
	end
	if (target:hasStatusEffect(EFFECT_VIT_DOWN)) then
		target:delStatusEffectSilent(EFFECT_VIT_DOWN);
	end
	if (target:hasStatusEffect(EFFECT_AGI_DOWN)) then
		target:delStatusEffectSilent(EFFECT_AGI_DOWN);
	end
	if (target:hasStatusEffect(EFFECT_INT_DOWN)) then
		target:delStatusEffectSilent(EFFECT_INT_DOWN);
	end
	if (target:hasStatusEffect(EFFECT_MND_DOWN)) then
		target:delStatusEffectSilent(EFFECT_MND_DOWN);
	end
	if (target:hasStatusEffect(EFFECT_CHR_DOWN)) then
		target:delStatusEffectSilent(EFFECT_CHR_DOWN);
	end

	target:addStatusEffect(EFFECT_STR_DOWN,TargSTR,0,duration);
	target:addStatusEffect(EFFECT_DEX_DOWN,TargDEX,0,duration);
	target:addStatusEffect(EFFECT_VIT_DOWN,TargVIT,0,duration);
	target:addStatusEffect(EFFECT_AGI_DOWN,TargAGI,0,duration);
	target:addStatusEffect(EFFECT_INT_DOWN,TargINT,0,duration);
	target:addStatusEffect(EFFECT_MND_DOWN,TargMND,0,duration);
	target:addStatusEffect(EFFECT_CHR_DOWN,TargCHR,0,duration);

	local dmg = doElementalNuke(963,2.3,caster,spell,target,false,1.0);

	return dmg;
end;
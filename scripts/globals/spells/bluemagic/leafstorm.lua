-----------------------------------------
-- Spell: Leafstorm
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_SLOW;
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
	params.multiplier = 4.0; params.tMultiplier = 2.0; params.duppercap = 70;
	params.str_wsc = 0.0; params.dex_wsc = 0.0; params.vit_wsc = 0.0; params.agi_wsc = 0.0; params.int_wsc = 0.0; params.mnd_wsc = 0.0; params.chr_wsc = 0.2;
    damage = BlueMagicalSpell(caster, target, spell, params, INT_BASED);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);
	
    local resist = applyResistance(caster, target, spell, params);

	if (damage > 0 and resist > 0.0625) then
		target:delStatusEffect(params.effect);
		target:addStatusEffect(params.effect,13,0,getBlueEffectDuration(caster,resist,params.effect));
	end
	
    return damage;
end;

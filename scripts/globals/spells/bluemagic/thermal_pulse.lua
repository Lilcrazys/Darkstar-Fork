-----------------------------------------
--
--  Thermal Pulse
--
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");
-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};

    params.multiplier = 4.0;
    params.tMultiplier = 2.0;
    params.duppercap = 90;
    params.str_wsc = 0.0;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.4;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local damage = BlueMagicalSpell(caster, target, spell, params, INT_BASED);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

	local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT) - target:getStat(MOD_INT),BLUE_SKILL,1.0);

	if (caster:hasStatusEffect(EFFECT_AZURE_LORE)) then
		multi = multi + 0.50;
    end

	if (damage > 0 and resist < 0.4) then
		local typeEffect = EFFECT_BLINDNESS;
		target:delStatusEffect(typeEffect); -- Wiki says it can overwrite itself or other binds
		target:addStatusEffect(typeEffect,52,0,getBlueEffectDuration(caster,resist,typeEffect)); -- No info for power on the internet, static to 12 for now.
	end

    return damage;
end;

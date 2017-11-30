-----------------------------------------
-- Spell: Thermal Pulse
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
    params.effect = EFFECT_BLINDNESS;
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

    local resist = applyResistance(caster, target, spell, params);

	if (caster:hasStatusEffect(EFFECT_AZURE_LORE)) then
		multi = multi + 0.50;
    end

	if (damage > 0 and resist < 0.4) then
		target:delStatusEffect(params.effect); -- Wiki says it can overwrite itself or other binds
		target:addStatusEffect(params.effect,52,0,getBlueEffectDuration(caster,resist,params.effect)); -- No info for power on the internet, static to 12 for now.
	end

    return damage;
end;

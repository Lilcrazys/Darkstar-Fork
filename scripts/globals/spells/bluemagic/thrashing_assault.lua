---------------------------------------------
-- Spell: Thrashing Assault
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
    params.effect = EFFECT_DEFENSE_DOWN;
    params.tpmod = TPMOD_ATTACK;
    params.dmgtype = DMGTYPE_SLASH;
    params.scattr = SC_SCISSION;
    params.numhits = 5;
    params.multiplier = 2;
    params.tp150 = 1.25;
    params.tp300 = 1.5;
    params.azuretp = 1.75;
    params.tMultiplier = 2.0;
    params.duppercap = 100;
    params.str_wsc = 0.32;
    params.dex_wsc = 0.32;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    local resist = applyResistance(caster, target, spell, params);

	if (damage > 0 and resist < 0.5) then
		target:delStatusEffect(params.effect);
		target:addStatusEffect(params.effect,4,0,getBlueEffectDuration(caster,resist,params.effect));
	end
    return damage;

end;

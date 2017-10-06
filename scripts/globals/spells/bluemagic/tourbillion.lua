-----------------------------------------
--  Tourbillion
-----------------------------------------
require("scripts/globals/magic");
require("scripts/globals/status");
require("scripts/globals/bluemagic");
require("scripts/globals/msg");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
	if (caster:hasStatusEffect(EFFECT_UNBRIDLED_LEARNING) == true) then
      return 0;
    else
      return chatType.STATUS_PREVENTS;
   end
end;

function onSpellCast(caster,target,spell)

	local params = {};

	params.tpmod = TPMOD_ATTACK;
    params.dmgtype = DMGTYPE_BLUNT;
    params.scattr = SC_SCISSION;
    params.numhits = 1;
    params.multiplier = 4.0;
    params.tp150 = 4.0;
    params.tp300 = 4.0;
    params.azuretp = 1.25;
    params.tMultiplier = 2.0;
    params.duppercap = 100;
    params.str_wsc = 0.25;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.25;
    params.chr_wsc = 0.0;


    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

	local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT) - target:getStat(MOD_INT),BLUE_SKILL,1.0);

	if (damage > 0 and resist < 0.3) then
	local typeEffect = EFFECT_DEFENSE_DOWN;
		target:delStatusEffect(typeEffect);
		target:addStatusEffect(typeEffect,250,0,getBlueEffectDuration(caster,resist,typeEffect));
	end

    return damage;
end;



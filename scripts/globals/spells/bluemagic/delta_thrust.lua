---------------------------------------------
--  Delta Thrust
---------------------------------------------

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

    params.tpmod = TPMOD_ATTACK;
    params.dmgtype = DMGTYPE_SLASH;
    params.scattr = SC_LIQUEFACTION;
    params.numhits = 3;
    params.multiplier = 2;
    params.tp150 = 1.25;
    params.tp300 = 1.5;
    params.azuretp = 1.75;
    params.tMultiplier = 2.0;
    params.duppercap = 100;
    params.str_wsc = 0.2;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.5;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

   
    local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT) - target:getStat(MOD_INT),BLUE_SKILL,1.0);

    if (damage > 0 and resist < 0.5) then
        local typeEffect = EFFECT_PLAGUE;
        target:delStatusEffect(typeEffect);
        target:addStatusEffect(typeEffect,4,0,getBlueEffectDuration(caster,resist,typeEffect));
    end
    return damage;

end;
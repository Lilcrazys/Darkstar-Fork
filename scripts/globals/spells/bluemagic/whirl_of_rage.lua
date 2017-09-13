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
    local dINT = caster:getStat(MOD_INT) - target:getStat(MOD_INT);
    local resist = applyResistanceEffect(caster,spell,target,dINT,SKILL_BLU,1.0,EFFECT_STUN)
    local params = {};
        params.tpmod = TPMOD_ATTACK;
        params.dmgtype = DMGTYPE_BLUNT;
        params.scattr = SC_SCISSION;
        params.numhits = 1;
        params.multiplier = 3.0;
        params.tp150 = 3.5;
        params.tp300 = 4.0;
        params.azuretp = 1.25;
        params.tMultiplier = 2.0;
        params.duppercap = 75;
        params.str_wsc = 0.30;
        params.dex_wsc = 0.0;
        params.vit_wsc = 0.0;
        params.agi_wsc = 0.0;
        params.int_wsc = 0.0;
        params.mnd_wsc = 0.30;
        params.chr_wsc = 0.0;

    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    -- local resist = applyResistance(caster,spell,target,caster:getStat(MOD_INT) - target:getStat(MOD_INT),BLUE_SKILL,1.0);

    if (damage > 0 and resist < 0.7) then
        target:delStatusEffect(EFFECT_STUN);
        target:addStatusEffect(EFFECT_STUN,3,0,getBlueEffectDuration(caster,resist,EFFECT_STUN));
    end

    return damage;
end;
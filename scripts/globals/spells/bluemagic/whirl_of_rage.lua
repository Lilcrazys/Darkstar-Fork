-----------------------------------------
--
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_STUN;
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

    local resist = applyResistance(caster, target, spell, params);

    if (damage > 0 and resist < 0.7) then
        target:delStatusEffect(params.effect);
        target:addStatusEffect(params.effect,3,0,getBlueEffectDuration(caster,resist,params.effect));
    end

    return damage;
end;

---------------------------------------------
-- Spell: Benthic Typhoon
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
    params.diff = caster:getMod(MOD_MACC) - target:getMod(MOD_MEVA);
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.bonus = 1.0;
    params.tpmod = TPMOD_ATTACK;
    params.dmgtype = DMGTYPE_SLASH;
    params.scattr = SC_GRAVITATION;
    params.numhits = 1;
    params.multiplier = 4;
    params.tp150 = 4.5;
    params.tp300 = 5;
    params.azuretp = 1.5;
    params.tMultiplier = 2.0;
    params.duppercap = 69;
    params.str_wsc = 0.0;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.6;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local resist = applyResistance(caster, target, spell, params);
    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    if (damage > 0 and resist > 0.125) then
        target:addStatusEffect(EFFECT_DEFENSE_DOWN, 10, 0, 60 * resist);
        target:addStatusEffect(EFFECT_MAGIC_DEF_DOWN, 10, 0, 60 * resist);
    end

    return damage;
end;

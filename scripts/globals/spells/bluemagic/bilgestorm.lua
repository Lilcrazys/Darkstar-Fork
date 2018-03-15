---------------------------------------------
-- Spell: Bilgestorm
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    if caster:hasStatusEffect(EFFECT_UNBRIDLED_LEARNING) then
        return 0;
    else
        return chatType.STATUS_PREVENTS;
    end
end;

function onSpellCast(caster,target,spell)
    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.tpmod = TPMOD_ATTACK;
    params.dmgtype = DMGTYPE_SLASH;
    params.scattr = SC_SCISSION;
    params.numhits = 3;
    params.multiplier = 1.5;
    params.tp150 = 1.5;
    params.tp300 = 1.5;
    params.azuretp = 1.25;
    params.tMultiplier = 2.0;
    params.duppercap = 100;
    params.str_wsc = 0.3;
    params.dex_wsc = 0.3;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local resist = applyResistance(caster, target, spell, params);
    local damage = BluePhysicalSpell(caster, target, spell, params);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    if (resist > 0.0625) then
        target:addStatusEffect(EFFECT_ACCURACY_DOWN, 35, 0, math.random(30,60));
        target:addStatusEffect(EFFECT_ATTACK_DOWN,   25, 0, math.random(30,60));
        target:addStatusEffect(EFFECT_DEFENSE_DOWN,  25, 0, math.random(30,60));
    end

    return damage;
end;

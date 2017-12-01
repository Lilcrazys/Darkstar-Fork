-----------------------------------------
-- Spell: Embalming Earth
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
    params.diff = caster:getStat(MOD_INT) - target:getStat(MOD_INT);
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_SLOW;
    params.multiplier = 3.0;
    if (caster:hasStatusEffect(EFFECT_AZURE_LORE)) then
        params.multiplier = params.multiplier + 0.50;
    end
    params.tMultiplier = 2.0;
    params.duppercap = 69;
    params.str_wsc = 0.0;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.3;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local resist = applyResistance(caster, target, spell, params);
    local damage = BlueMagicalSpell(caster, target, spell, params, MND_BASED);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    if (resist > 0.25) then
        target:addStatusEffect(EFFECT_SLOW,25,0,getBlueEffectDuration(caster,resist,params.effect));
    end

    return damage;
end;

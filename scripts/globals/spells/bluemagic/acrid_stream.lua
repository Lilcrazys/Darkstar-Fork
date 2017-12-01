---------------------------------------------
-- Spell: Acrid Stream
---------------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
---------------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0;
end;

function onSpellCast(caster,target,spell)
    local params = {};
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_MAGIC_DEF_DOWN;
    -- This data should match information on http://wiki.ffxiclopedia.org/wiki/Calculating_Blue_Magic_Damage
    local multi = 3.08;
    if (caster:hasStatusEffect(EFFECT_AZURE_LORE)) then
        multi = multi + 0.50;
    end
    params.multiplier = multi;
    params.tMultiplier = 1.5;
    params.duppercap = 69;
    params.str_wsc = 0.0;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.3;
    params.chr_wsc = 0.0;

    local resist = applyResistance(caster, target, spell, params);
    local damage = BlueMagicalSpell(caster, target, spell, params, MND_BASED);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    if (resist > 0.5) then
        target:addStatusEffect(params.effect,25,0,getBlueEffectDuration(caster,resist,params.effect));
    end

    return damage;
end;

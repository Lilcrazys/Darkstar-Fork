-----------------------------------------
-- Gates of Hades
-- Deals severe Fire damage to enemies within an area of effect. Additional effect: Burn
-- Can only be cast with job ability Unbridled Learning.
-- Burn effect is 22 HP/tick and -47 INT.
-- https://www.bg-wiki.com/bg/Gates_of_Hades
-----------------------------------------
require("scripts/globals/bluemagic");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
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
    params.attribute = MOD_INT;
    params.skillType = BLUE_SKILL;
    params.effect = EFFECT_BURN;
    params.multiplier = 5.0;
    params.tMultiplier = 1.0;
    params.duppercap = 100;
    params.str_wsc = 0.2;
    params.dex_wsc = 0.2;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.0;
    params.chr_wsc = 0.0;

    local resist = applyResistanceEffect(caster, target, spell, params)
    local damage = BlueMagicalSpell(caster, target, spell, params, 0); -- Don't use a stat here
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    if (damage > 0 and resist < 0.125) then
        -- Bg doesn't say effect varies.
        -- Used variables here to make adjustment easy.
        local DOT    = 22;
        local duration = 90; -- getBlueEffectDuration doesn't handle burn.
        local debuff = -47;
        target:addStatusEffect(params.effect, DOT, 3, duration, 0, debuff);
    end

    return damage;
end;

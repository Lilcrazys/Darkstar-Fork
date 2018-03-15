-----------------------------------------
-- Spell: Polar Roar
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
    params.effect = EFFECT_BIND;
    params.multiplier = 9.375;
    params.tMultiplier = 3.0;
    params.duppercap = 1000;
    params.str_wsc = 0.0;
    params.dex_wsc = 0.0;
    params.vit_wsc = 0.0;
    params.agi_wsc = 0.0;
    params.int_wsc = 0.0;
    params.mnd_wsc = 0.3;
    params.chr_wsc = 0.0;

    local damage = BlueMagicalSpell(caster, target, spell, params, MND_BASED);
    damage = BlueFinalAdjustments(caster, target, spell, damage, params);

    local resist = applyResistance(caster, target, spell, params);

    if (damage > 0 and resist > 0.125) then
        target:delStatusEffect(params.effect);
        target:addStatusEffect(params.effect,5,0,getBlueEffectDuration(caster,resist,params.effect));
    end

    return damage;
end;


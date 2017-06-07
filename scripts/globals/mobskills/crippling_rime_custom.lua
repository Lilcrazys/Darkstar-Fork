---------------------------------------------
--  Crippling Rime
--  Gallu

---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
require("scripts/globals/utils");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 120, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 120, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 120, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 120, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 120, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 120, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 120, 0, 60);

    local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_ICE, 1100);

    local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_ICE,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

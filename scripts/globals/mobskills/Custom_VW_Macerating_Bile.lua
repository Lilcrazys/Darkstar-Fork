---------------------------------------------
--  Macerating Bile
--  Mantid
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    MobStatusEffectMove(mob, target, EFFECT_BIO, 100, 3, 90);

    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 110, 20, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 110, 20, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 110, 20, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 110, 20, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 20, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 110, 20, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 20, 60);

    local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_WATER, 900);

    local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_EARTH,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

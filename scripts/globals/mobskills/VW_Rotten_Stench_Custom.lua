---------------------------------------------
-- Rotten Stench
--
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_MAGIC_ACC_DOWN;
    local typeEffect = EFFECT_ACCURACY_DOWN;


    MobStatusEffectMove(mob, target, typeEffect, 50, 0, 60);

    local dmgmod = MobBreathMove(mob, target, 0.125, 3, ELE_WATER, 600);

    local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_WATER,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

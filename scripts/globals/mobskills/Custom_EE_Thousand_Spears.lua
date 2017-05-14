---------------------------------------------
--  1000 Spears
--

--
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
    local needles = 5000 / skill:getTotalTargets();
    local typeEffect = EFFECT_AMNESIA;
    local dmg = MobFinalAdjustments(needles,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_LIGHT,MOBPARAM_WIPE_SHADOWS);

    target:delHP(dmg);
    skill:setMsg(MobGazeMove(mob, target, typeEffect, 10, 0, 90));


    return dmg;
end;

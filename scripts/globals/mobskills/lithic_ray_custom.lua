---------------------------------------------
--  Lithic Ray
--  Description: Petrifies opponents with a gaze attack.
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;


function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_PETRIFICATION;

    skill:setMsg(MobGazeMove(mob, target, typeEffect, 10, 0, 30));
    return typeEffect;
end;

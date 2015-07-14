---------------------------------------------
--  Shah_Mat
--  Description: Terror and doom
--  Type: Gaze
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: Single gaze
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(MobGazeMove(mob, target, EFFECT_DOOM, 10, 3, 10));
    skill:setMsg(MobGazeMove(mob, target, EFFECT_TERROR, 10, 0, 10));
    return typeEffect;
end;

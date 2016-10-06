---------------------------------------------
-- Afflicting Gaze
-- Description: Plagues and Binds opponents with a gaze attack.
-- Family: Caturae
-- Type: Gaze
-- Can be dispelled: N/A
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: Single gaze
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobGazeMove(mob, target, EFFECT_PLAGUE, 1, 0, 25);
    skill:setMsg(MobGazeMove(mob, target, EFFECT_BIND, 1, 0, 25));

    return EFFECT_BIND;
end;

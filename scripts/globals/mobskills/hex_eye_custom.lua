---------------------------------------------
-- Hex Eye
--
-- Description: Paralyzes with a gaze.
-- Type: Gaze
-- Utsusemi/Blink absorb: Ignores shadows
-- Range: Line of sight
-- Notes:
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(MobGazeMove(mob, target, EFFECT_PARALYSIS, 25, 0, 120));

    return typeEffect;
end;

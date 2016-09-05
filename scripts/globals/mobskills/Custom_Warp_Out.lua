---------------------------------------------------
-- SuperDuperJump
-- Only used by "The Jumping Crab" custom HNM.
-- Exists for animation purposes only.
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(0);
    return 0;
end;
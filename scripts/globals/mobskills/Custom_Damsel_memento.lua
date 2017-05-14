---------------------------------------------------
--  Damsel Memento
--  Ixion
--  Description: Restores HP.
--
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(MSG_SELF_HEAL);
    return MobHealMove(mob, mob:getMaxHP() * 0.05);
end;

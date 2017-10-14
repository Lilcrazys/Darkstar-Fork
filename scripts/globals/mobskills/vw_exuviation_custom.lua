---------------------------------------------------
-- Exuviation
--
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(msgBasic.SELF_HEAL);
    return MobHealMove(mob, mob:getMaxHP() * 0.075);
end;

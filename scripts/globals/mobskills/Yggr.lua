---------------------------------------------------
-- Yggr
-- Odin
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = MOD_HUMANOID_KILLER;
    skill:setMsg(MobBuffMove(mob, typeEffect, 10, 0, 90));
    return typeEffect;
end;

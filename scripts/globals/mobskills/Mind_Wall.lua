---------------------------------------------
--  Mind Wall
--
--  Description: Absorbs Magic
--  Type: Buff
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local typeEffect = MOD_MAGIC_ABSORB;

    skill:setMsg(MobBuffMove(mob, typeEffect, 0, 300));
	return typeEffect;
end;

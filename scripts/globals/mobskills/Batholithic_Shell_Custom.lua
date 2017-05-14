---------------------------------------------
-- Batholithic Shell
-- Gabbrath
-----------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local power = 25;
	local duration = 180;

	local typeEffect = EFFECT_HASTE;
	local typeEffect = EFFECT_STONESKIN;
	local typeEffect = EFFECT_BERSERK;
	local typeEffect = EFFECT_MAGIC_ATK_BOOST;
	
    skill:setMsg(MobBuffMove(mob, typeEffect, power, 0, duration));

	return typeEffect;
end;

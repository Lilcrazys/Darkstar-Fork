---------------------------------------------
--  Accursed  Armor
--
--  Description: Covers the user in curse spikes.
--  Type: Enhancing
--  Utsusemi/Blink absorb: N/A
--  Range: Self
--  Notes:
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local power = 75;
	local duration = 90;
	local typeEffect = EFFECT_CURSE_SPIKES;

    skill:setMsg(MobBuffMove(mob, typeEffect, power, 0, duration));

	return typeEffect;
end;

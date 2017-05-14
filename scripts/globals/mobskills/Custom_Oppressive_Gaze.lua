---------------------------------------------------
-- Oppressive Gaze
-- Causes Terror, Poison
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local typeEffect = EFFECT_TERROR;
	local power = 30;
	-- Three minutes is WAY too long, especially on Wyrms. Reduced to Wiki's definition of 'long time'. Reference: http://wiki.ffxiclopedia.org/wiki/Absolute_Terror
	local duration = 30;

	skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, power, 0, duration));
    MobStatusEffectMove(mob, target, EFFECT_POISON, 30, 100, 60);		
	return typeEffect;
end;
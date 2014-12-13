---------------------------------------------------
-- Absolute Terror
-- Causes Terror, which causes the victim to be stunned for the duration of the effect, this can not be removed.
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function OnMobSkillCheck(target,mob,skill)

end;

function OnMobWeaponSkill(target, mob, skill)

	local typeEffect = EFFECT_KO;
	local power = 30;
	local duration = 3;
	skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, power, 0, duration));
	return typeEffect;

end
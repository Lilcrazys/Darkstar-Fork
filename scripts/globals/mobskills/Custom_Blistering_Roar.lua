---------------------------------------------
--  Blistering Roar
--  Gabbraths
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	MobStatusEffectMove(mob, target, EFFECT_BURN, 100, 3, 90);
	MobStatusEffectMove(mob, target, EFFECT_TERROR, 10, 0, 10);
	MobStatusEffectMove(mob, target, EFFECT_ATTACK_DOWN, 150, 0, 60);

	local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_FIRE, 1100);

	local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_FIRE,MOBPARAM_IGNORE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;

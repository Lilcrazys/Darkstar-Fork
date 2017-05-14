---------------------------------------------
--  Darrcuiln
--  Startward Yowl
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	MobStatusEffectMove(mob, target, EFFECT_CHOKE, 100, 3, 90);
	MobStatusEffectMove(mob, target, EFFECT_TERROR, 10, 0, 20);
	MobStatusEffectMove(mob, target, EFFECT_ATTACK_DOWN, 150, 0, 90);
	MobStatusEffectMove(mob, target, EFFECT_MAGIC_ATK_DOWN, 150, 0, 90);
	MobStatusEffectMove(mob, target, EFFECT_MAX_HP_DOWN, 50, 0, 90);
	MobStatusEffectMove(mob, target, EFFECT_MAX_MP_DOWN, 50, 0, 90);			

	local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_WIND, 900);

	local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_WIND,MOBPARAM_IGNORE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;

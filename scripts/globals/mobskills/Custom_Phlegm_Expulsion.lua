---------------------------------------------
--  Phelgm Expulsion
--  Mantids
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	MobStatusEffectMove(mob, target, EFFECT_SLOW, 128, 0, 60);
	MobStatusEffectMove(mob, target, EFFECT_SILENCE, 10, 0, 60);
	MobStatusEffectMove(mob, target, EFFECT_AMNESIA, 10, 0, 60);

	local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_WATER, 1100);

	local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_WATER,MOBPARAM_IGNORE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;

---------------------------------------------
-- Sloughy Sputum
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local numhits = 1;
	local accmod = 10;
	local dmgmod = 4;

	MobStatusEffectMove(mob, target, EFFECT_DROWN, 75, 3, 180);
	MobStatusEffectMove(mob, target, EFFECT_WEIGHT, 75, 0, 60);

	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,MOBPARAM_3_SHADOW,info.hitslanded);

	return dmg;
end;

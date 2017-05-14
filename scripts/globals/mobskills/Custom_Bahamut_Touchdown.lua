---------------------------------------------
-- Touchdown
-- Bahamut
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
	local dmgmod = 2.3;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_WIPE_SHADOWS,info.hitslanded);

	local typeEffect = EFFECT_TERROR;

         MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 10, 0, 10);

	target:delHP(dmg);
	return dmg;
end;

---------------------------------------------
--  Mow
--  Description: Deals damage in an area of effect. Additional effect: Poison
--  Type: Physical
--  Utsusemi/Blink absorb: 2-3 shadows
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local numhits = math.random(2,3);
	local accmod = 10;
	local dmgmod = 2;
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

	local typeEffect = EFFECT_POISON;

    MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 100, 3, 60);

	target:delHP(dmg);
	return dmg;
end;

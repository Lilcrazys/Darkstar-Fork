---------------------------------------------
--  Tortoise Stomp (Custom Version for NM)
--
--  Single target damage and Defense Down effect.
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
	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);
	local typeEffect = EFFECT_DEFENSE_DOWN;
	MobPhysicalStatusEffectMove(mob, target, skill, typeEffect, 30, 0, 180);

	target:delHP(dmg);
	return dmg;
end;

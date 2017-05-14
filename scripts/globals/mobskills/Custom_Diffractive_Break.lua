---------------------------------------------
--  Discordant Gambit
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
	local dmgmod = 3;

    MobStatusEffectMove(mob, target, EFFECT_PLAGUE, 30, 3, 60);

	local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);
	target:delHP(dmg);

	return dmg;
end;

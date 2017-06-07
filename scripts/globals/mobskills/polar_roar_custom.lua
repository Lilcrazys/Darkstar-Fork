---------------------------------------------
--  Polar Roar 
--  Kumhau
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local dmgmod = 1;

	MobStatusEffectMove(mob, target, EFFECT_BIND, 1, 0, 30);

	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_ICE,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_IGNORE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;

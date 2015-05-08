---------------------------------------------
--  Rockfin Melee
--  Rockfin 
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_STUN;

	MobStatusEffectMove(mob, target, typeEffect, 1, 0, 5);

	local dmgmod = 1;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*2.5,ELE_FIRE,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_FIRE,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	skill:setMsg(264)
	return dmg;
end;

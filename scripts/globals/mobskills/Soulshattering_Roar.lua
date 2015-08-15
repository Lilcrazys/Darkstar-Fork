---------------------------------------------
--  Soulshattering Roar
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local dmgmod = 2;

	MobStatusEffectMove(mob, target, EFFECT_TERROR, 10, 0, 10);
    mob:addStatusEffectEx(EFFECT_PHYSICAL_SHIELD,0,1,0,60);
    mob:addStatusEffect(EFFECT_REGAIN,10,3,60);

	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_ICE,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;

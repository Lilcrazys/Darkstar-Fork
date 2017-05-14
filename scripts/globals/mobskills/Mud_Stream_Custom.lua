---------------------------------------------
--  Mud Stream
--
--  Description: AoE High DMG,Silence, Magic DEF Down, SLow, Bind, Rasp
--  Type: Magical
--  Range: 30' radial.
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
	MobStatusEffectMove(mob, target, EFFECT_RASP, 15, 50, 60);
	MobStatusEffectMove(mob, target, EFFECT_BIND, 10, 0, 30);
	MobStatusEffectMove(mob, target, EFFECT_MAGIC_DEF_DOWN, 30, 0, 120);

	local dmgmod = 2;
	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_EARTH,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;

---------------------------------------------
--  Tebbad Wing
--
--  Description: Deals darkness damage to enemies within a very wide area of effect. Additional effect: Sleep
--  Type: Magical
--  Utsusemi/Blink absorb: Wipes shadows
--  Range: 30' radial.
--  Notes: Used only by Vrtra and Azdaja
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

	local dmgmod = 2;

    target:addStatusEffect(EFFECT_SILENCE, 10, 0, 60);

	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 4,ELE_THUNDER,dmgmod,TP_MAB_BONUS,1);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_THUNDER,MOBPARAM_WIPE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;








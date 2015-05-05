---------------------------------------------
--  Stifling Tantra
--
--  Description: Spins around dealing damage to targets in an area of effect.
--  Type: Physical
--  Utsusemi/Blink absorb: 2-4 shadows
--  Range: 10' radial
--  Notes:
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance")) = 1 and
        if (mob:getHPP() <= 50) then 
        return 0;
    else
        return 1;
    end 
end;

function onMobWeaponSkill(target, mob, skill)
	local dmgmod = 3;

	MobStatusEffectMove(mob, target, EFFECT_WEAKNESS, 10, 0, 60);
	MobStatusEffectMove(mob, target, EFFECT_MUTE, 10, 0, 60);

	local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_DARK,dmgmod,TP_NO_EFFECT);
	local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
	target:delHP(dmg);
	return dmg;
end;

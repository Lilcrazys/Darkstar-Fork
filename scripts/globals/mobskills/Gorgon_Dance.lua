---------------------------------------------
--  Gorgon Dance
--
--  Description: Petrifies all targets in an area of effect.
--  Type: Enfeebling
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: 10' radial?
--  Notes: Used only by Medusa. Starts using it at 25%.
---------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function OnMobSkillCheck(target,mob,skill)
	local ID = mob:getID();
    if (ID == 16998862) then
	    return 0;
	end
	    return 1;
end;

function OnMobWeaponSkill(target, mob, skill)
	local typeEffect = EFFECT_PETRIFICATION;

    skill:setMsg(MobStatusEffectMove(mob, target, typeEffect, 1, 0, 15));

	return typeEffect;
end;

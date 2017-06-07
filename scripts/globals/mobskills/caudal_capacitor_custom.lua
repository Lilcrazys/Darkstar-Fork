---------------------------------------------
--  Caudal Capacitor
--
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
	    MobStatusEffectMove(mob, target, typeEffect, 10, 3, 7);
    return typeEffect;
end;

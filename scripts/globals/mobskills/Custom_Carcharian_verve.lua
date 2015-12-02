---------------------------------------------
--  Carcharian_verve
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
    local typeEffect = EFFECT_DEFENSE_BOOST;
	local typeEffect = EFFECT_MAGIC_DEF_BOOST;	
	local typeEffect = EFFECT_ATTACK_BOOST;	

	MobStatusEffectMove(mob, target, typeEffect, 10, 3, 90);
 
    skill:setMsg(MSG_BUFF)
    return typeEffect;
end;

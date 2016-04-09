---------------------------------------------
-- Chaos Blast 
-- Zilant
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
    MobStatusEffectMove(mob, target, EFFECT_MAX_TP_DOWN, 75, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_MAX_HP_DOWN, 75, 0, 90);
    MobStatusEffectMove(mob, target, EFFECT_MAX_MP_DOWN, 75, 0, 90);    

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_DARK,dmgmod,TP_MAB_BONUS);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;








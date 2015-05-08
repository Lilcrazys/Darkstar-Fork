---------------------------------------------
-- Lightning Spear
-- Moneceros
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_AMNESIA;

    MobStatusEffectMove(mob, target, typeEffect, 10, 3, 60);

    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*4,ELE_THUNDER,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_THUNDER,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

---------------------------------------------
--  Seismic Impact
--  Iron Giant
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1.5;

    MobStatusEffectMove(mob, target, EFFECT_TERROR, 30, 0, 20);
    MobStatusEffectMove(mob, target, EFFECT_SLOW, 30, 0, 90);

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_EARTH,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_EARTH,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

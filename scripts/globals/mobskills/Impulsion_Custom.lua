---------------------------------------------
-- Impulsion
-- Bahamut
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local dmgmod = 1.25;

    MobStatusEffectMove(mob, target, EFFECT_PETRIFICATION, 150, 0, 30);
    MobStatusEffectMove(mob, target, EFFECT_BLINDNESS, 10, 0, 60);

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg() * 5,ELE_EARTH,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_EARTH,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

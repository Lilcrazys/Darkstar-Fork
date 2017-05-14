---------------------------------------------
--  Deracinator
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
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);

    MobStatusEffectMove(mob, target, EFFECT_AMNESIA, 10, 0, 30);
    MobStatusEffectMove(mob, target, EFFECT_MUTE, 10, 0, 30);
    MobStatusEffectMove(mob, target, EFFECT_BLINDNESS, 10, 0, 60);

    target:delHP(dmg);
    return dmg;
end;

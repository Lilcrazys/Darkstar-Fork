---------------------------------------------
--  Venom
--
--  Description: Deals damage in a fan shaped area. Additional effect: poison
--  Type: Magical Water
--  Utsusemi/Blink absorb: Ignores shadows
--  Range: 10' cone
--  Notes: Additional effect can be removed with Poisona.
---------------------------------------------
require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_POISON;

    MobStatusEffectMove(mob, target, typeEffect, 100, 3, 90);

    local dmgmod = 2;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_WATER,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WATER,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

---------------------------------------------
-- Ecliptic Meteor
--
-- Description: Summons a meteor to smash the opposition.
-- Additional effect: Paralysis + Bio + Blind
-- Type: Magical?
-- Can be dispelled: N/A
-- Utsusemi/Blink absorb: Removes shadows
-- Range: 10'
-- Notes: Only used by Hadhayosh and Kholomodumo
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*6,ELE_DARK,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);

    MobStatusEffectMove(mob, target, EFFECT_PARALYSIS, 1, 0, 30);
    MobStatusEffectMove(mob, target, EFFECT_BIO, 20, 3, 30);
    MobStatusEffectMove(mob, target, EFFECT_BLIND, 1, 0, 30);

    target:delHP(dmg);
    return dmg;
end;

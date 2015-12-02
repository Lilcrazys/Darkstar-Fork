---------------------------------------------
--  Kaleidoscopic Fury
--  Harpia 

---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
require("scripts/globals/utils");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
	return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    MobStatusEffectMove(mob, target, EFFECT_DIA, 80, 3, 120);
    MobStatusEffectMove(mob, target, EFFECT_MUTE, 10, 1, 60);
    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 90, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 90, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 90, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 90, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 90, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 90, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 90, 0, 60);    

    local dmgmod = 2.5;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*5,ELE_WIND,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_WIND,MOBPARAM_WIPE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

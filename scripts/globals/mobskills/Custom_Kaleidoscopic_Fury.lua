---------------------------------------------------
-- Kaleidoscopic Fury
-- Harpia 
---------------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 10;
    local dmgmod = 3.0;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);

    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 60, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 60, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 60, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 60, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 60, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 60, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 60, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_DIA, 100, 3, 90);

    target:delHP(dmg);
    return dmg;
end;

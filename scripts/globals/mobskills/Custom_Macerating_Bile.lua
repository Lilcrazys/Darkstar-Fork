---------------------------------------------
-- Macerating Bile (Custom Version)
-- Mantid
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    -- Legion Custom
    if (mob:getPool() == 4694 or -- Kaggen
        mob:getPool() == 5173 or -- Gaunab
        mob:getPool() == 9886    -- Tsui-Goab
        ) then

        local dmgmod = MobBreathMove(mob, target, 0.15, 3, ELE_WATER, 900);
        local dmg = MobFinalAdjustments(dmgmod,mob,skill,target,MOBSKILL_BREATH,MOBPARAM_EARTH,MOBPARAM_IGNORE_SHADOWS);

        MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 60, 3, 90);
        MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 60, 3, 90);
        MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 60, 3, 90);
        MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 60, 3, 90);
        MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 60, 3, 90);
        MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 60, 3, 90);
        MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 60, 3, 90);
        MobStatusEffectMove(mob, target, EFFECT_BIO, 100, 3, 90);

        target:delHP(dmg);
        return dmg;

    -- DSP Ver does not exist yet, this is an approximation
    else
        MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 20, 3, 60);
        MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 20, 3, 60);
        MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 20, 3, 60);
        MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 20, 3, 60);
        MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 20, 3, 60);
        MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 20, 3, 60);
        MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 20, 3, 60);
        skill:setMsg(MobStatusEffectMove(mob, target, EFFECT_BIO, 50, 3, 60));
        return dmg;
    end
end;

---------------------------------------------
--  Yaksha Oblivion
--  Naraka
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
function onMobSkillCheck(target,mob,skill)
    if (mob:getLocalVar("stance") == 0) then
        if (mob:getHPP() <= 50) then
            return 0;
        end
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 4.0;

    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 110, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 110, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 110, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 110, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 110, 0, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 0, 60);

    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);
    target:delHP(dmg);
    return dmg;
end;

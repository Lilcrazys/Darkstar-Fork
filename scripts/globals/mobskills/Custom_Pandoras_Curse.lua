---------------------------------------------
--  Pandora's Curse
--  Mimic
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------
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
    local dmgmod = 2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,MOBPARAM_3_SHADOW);

    MobStatusEffectMove(mob, target, EFFECT_STR_DOWN, 110, 90, 60); -- Tick won't happen because effect will have worn off
    MobStatusEffectMove(mob, target, EFFECT_DEX_DOWN, 110, 90, 60); -- This is intentional because tick of zero may be a prob.
    MobStatusEffectMove(mob, target, EFFECT_VIT_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_AGI_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_MND_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_INT_DOWN, 110, 90, 60);
    MobStatusEffectMove(mob, target, EFFECT_BIO, 100, 3, 60);

    target:delHP(dmg);
    return dmg;
end;
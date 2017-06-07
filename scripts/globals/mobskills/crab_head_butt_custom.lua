---------------------------------------------
-- Crab Head Butt
-- Stun, Grav, Slow, knockback
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 2.7;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_STUN, 1, 0, 5);
    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_AMNESIA, 1, 0, 10);
    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_WEIGHT, 50, 0, 150);
    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_SLOW, 20, 0, 60);

    target:delHP(dmg);
    return dmg;
end;

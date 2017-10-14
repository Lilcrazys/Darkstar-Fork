---------------------------------------------
--  Lethal Triclip
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 3;
    local accmod = 10;
    local dmgmod = 1;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

    target:delHP(dmg); -- Effect AFTER dmg to avoid instant KO
    MobPhysicalStatusEffectMove(mob, target, skill, EFFECT_MAX_HP_DOWN, 50, 0, 120);
    return dmg;
end;

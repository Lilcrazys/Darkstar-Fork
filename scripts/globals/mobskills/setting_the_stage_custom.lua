---------------------------------------------
--
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
    local accmod = 1;
    local dmgmod = 1.2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

    MobGazeMove(mob, target, EFFECT_TERROR, 10, 3, 30);

    target:delHP(dmg); -- Effect AFTER dmg to avoid instant KO
    MobGazeMove(mob, target, EFFECT_WEAKNESS, 10, 3, 30);
    return dmg;
end;

---------------------------------------------
--  Brownout
--  Hurkan
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_BLINDNESS;

    skill:setMsg(MobGazeMove(mob, target, typeEffect, 10, 3, 120));


    local numhits = 2;
    local accmod = 1;
    local dmgmod = 1.2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);
    target:delHP(dmg);

    return dmg;
end;
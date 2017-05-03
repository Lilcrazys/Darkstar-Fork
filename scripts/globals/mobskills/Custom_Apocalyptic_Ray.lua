---------------------------------------------
-- Apocalyptic Ray
--
---------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local typeEffect = EFFECT_DOOM;

    skill:setMsg(MobGazeMove(mob, target, typeEffect, 10, 3, 5));

    local dmgmod = 3;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3.5,ELE_DARK,dmgmod,TP_MAB_BONUS);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_DARK,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    return dmg;
end;

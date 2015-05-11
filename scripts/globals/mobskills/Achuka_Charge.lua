---------------------------------------------
-- Rockfin Melee
-- Rockfin
---------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 2;

    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*POW,ELE_NONE,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_IGNORE_SHADOWS);

    skill:setMsg(264)

    target:addTP(-1);
    mob:addTP(1);
    target:delHP(dmg);

    return dmg;
end;

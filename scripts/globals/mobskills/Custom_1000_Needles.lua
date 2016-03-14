---------------------------------------------
--  1000 Needles (Custom Version)
--
--  Description: Shoots multiple needles at enemies within range.
--  Type: Magical (Light)
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getPool() == 9856 or mob:getPool() == 9857) then -- VWNM can use at any HP level.
        return 0;
    end

    -- DSPs check for regular mobs here
    if (mob:getHPP() <= 50) then
        return 0;
    else
        return 1;
    end
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local needles = 1000 / skill:getTotalTargets();

    local dmg = MobFinalAdjustments(needles,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_LIGHT,MOBPARAM_WIPE_SHADOWS);

    target:delHP(dmg);

    return dmg;
end;
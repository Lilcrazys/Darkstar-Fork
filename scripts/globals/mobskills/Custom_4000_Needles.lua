---------------------------------------------
-- 4000 Needles
--
-- Description: Shoots multiple needles at enemies within range.
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 75) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    --[[
    local needles = 4000 / skill:getTotalTargets();
    ]]
    local div = 1;
    if (skill:getTotalTargets() > 1) then
        div = skill:getTotalTargets() * 1.75;
    end
    local needles = 4000 / div;

    local dmg = MobFinalAdjustments(needles,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_LIGHT,MOBPARAM_WIPE_SHADOWS);

    target:delHP(dmg);

    return dmg;
end;

---------------------------------------------
-- ??? Needles
--
-- Description: Shoots multiple needles at enemies within range.
--
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 25) then
        return 0;
    else
        return 1;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    -- from http://ffxiclopedia.wikia.com/wiki/%3F%3F%3F_Needles
    -- "Seen totals ranging from 15,000 to 55,000 needles."
    --[[
    local needles = math.random(15000,55000) / skill:getTotalTargets();
    ]]
    local div = 1;
    if (skill:getTotalTargets() > 1) then
        div = skill:getTotalTargets() * 1.25;
    end
    local needles = math.random(1500,40000) / div;

    local dmg = MobFinalAdjustments(needles,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_LIGHT,MOBPARAM_WIPE_SHADOWS);

    target:delHP(dmg);

    return dmg;
end;

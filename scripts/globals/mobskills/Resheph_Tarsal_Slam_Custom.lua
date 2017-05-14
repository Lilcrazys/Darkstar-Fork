---------------------------------------------------
-- Tarsal Slam
--
-- Description: Reduces target's HP to 1, ignores Utsusemi
--
---------------------------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");
---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)

    local dmg = target:getHP()-1;
    target:delHP(dmg);
    return dmg;
end;

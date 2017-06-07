---------------------------------------------------
-- Darrcuiln
-- Aurous Charge
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() <= 50) then
        return 0;
    else 
        return 1;
    end    
end;

function onMobWeaponSkill(target, mob, skill)

    local dmg = target:getHP()-1;
    target:delHP(dmg);
    return dmg;
end

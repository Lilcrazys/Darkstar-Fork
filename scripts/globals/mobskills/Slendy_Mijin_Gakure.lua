---------------------------------------------------
--
-- Mijin Gakure (SlenderMan custom version)
--
-- Kill self to attempt to kill target.
--
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getHPP() > 3) then
        return 1;
    else
        return 0;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1.1;
    local hpmod = mob:getHP() / mob:getMaxHP();
    local power = hpmod * 8 + 6;
    local baseDmg = mob:getWeaponDmg() * power;
    local info = MobMagicalMove(mob,target,skill,baseDmg,ELE_NONE,dmgmod,TP_MAB_BONUS,1);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_NONE,MOBPARAM_IGNORE_SHADOWS);
    target:delHP(dmg);
    target:delMP(dmg);
    mob:setHP(0);
    return dmg;
end;

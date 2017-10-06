---------------------------------------------
--  Sleet Blast Alt (Custom single target version)
--
--  Description: Deals ice damage to a single target
--  Type: Magical
--  Utsusemi/Blink absorb: Wipes shadows
--  Notes: Used only by Jormungand while flying in place of standard attacks
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    local dmgmod = 1.25;
    local info = MobMagicalMove(mob,target,skill,mob:getWeaponDmg()*3,ELE_ICE,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_MAGICAL,MOBPARAM_ICE,MOBPARAM_IGNORE_SHADOWS);

    skill:setMsg(msgBasic.MELEE); -- Single Target MSG
    -- skill:setMsg(msgBasic.MELEE_AOE); -- AoE MSG

    target:delHP(dmg);
    target:addTP(-1);
    mob:addTP(1);

    return dmg;
end;

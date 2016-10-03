---------------------------------------------
-- Bztavian_Melee_Bite
-- Bztavian Special Melee
-- Single Target Physical damage
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = math.random(1,2);
    local accmod = 1;
    local dmgmod = 1.20;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT,1,1.2,1.5);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_PIERCE,MOBPARAM_IGNORE_SHADOWS);

    skill:setMsg(MSG_MELEE); -- Single Target MSG
    -- skill:setMsg(MSG_MELEE_AOE); -- AoE MSG

    target:delHP(dmg);
    target:addTP(1);
    mob:addTP(1);

    return dmg;
end;

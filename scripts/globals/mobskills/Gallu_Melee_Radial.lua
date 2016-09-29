---------------------------------------------
-- Gallu_Melee_Radial
-- Gallu Special Melee
-- AoE Physical damage with Bind
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 1;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT,1,1.2,1.5);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_NONE,MOBPARAM_IGNORE_SHADOWS);

    if (math.random(1,10) == 5) then
        target:addStatusEffect(EFFECT_BIND, 10, 0, 5);
    end

    -- skill:setMsg(MSG_MELEE); -- Single Target MSG
    skill:setMsg(MSG_MELEE_AOE); -- AoE MSG

    target:delHP(dmg);
    target:addTP(1);
    mob:addTP(1);

    return dmg;
end;

---------------------------------------------
-- Botulus_Melee_Front
-- Botulus Special Melee
-- AoE Physical damage and Amnesia
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (target:isBehind(mob) == false) then
        -- return 0;
        return 0; -- this is temp.
    else
        return 0;
    end
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 10;
    local dmgmod = 0.5;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_DMG_VARIES,1,2,3);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

    MobStatusEffectMove(mob, target, EFFECT_AMNESIA, 10, 0, 10);

    -- skill:setMsg(MSG_MELEE); -- Single Target MSG
    skill:setMsg(MSG_MELEE_AOE); -- AoE MSG

    target:delHP(dmg);
    target:addTP(1);
    mob:addTP(1);

    return dmg;
end;
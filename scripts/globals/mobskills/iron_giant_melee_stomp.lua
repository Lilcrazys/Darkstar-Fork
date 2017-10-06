---------------------------------------------
-- Iron_Giant_Melee_Stomp
-- Iron Giant Special Melee
-- Physical Damage with Amnesia
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    if (mob:getPool() ~= 9817 and mob:getMobMod(MOBMOD_SKILL_LIST) == 4167) then
        -- Ironclad's (Abyssea and Legion NMs)
        local numhits = 1;
        local accmod = 1;
        local dmgmod = 0.85;
        local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT,1,1.2,1.5);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

        if (math.random(1,10) == 5) then
            target:addStatusEffect(EFFECT_AMNESIA, 10, 0, 10);
        end

        -- skill:setMsg(msgBasic.MELEE); -- Single Target MSG
        skill:setMsg(msgBasic.MELEE_AOE); -- AoE MSG

        target:delHP(dmg);
        target:addTP(1);
        mob:addTP(12);

        return dmg;
    elseif (mob:getPool() == 9817) then
        -- Voidwrought (Voidwatch NM)
        local numhits = 1;
        local accmod = 1;
        local dmgmod = 1.25;
        local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT,1,1.2,1.5);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

        if (math.random(1,10) == 5) then
            target:addStatusEffect(EFFECT_AMNESIA, 10, 0, 10);
        end

        -- skill:setMsg(msgBasic.MELEE); -- Single Target MSG
        skill:setMsg(msgBasic.MELEE_AOE); -- AoE MSG

        target:delHP(dmg);
        target:addTP(1);
        mob:addTP(12);

        return dmg;
    else
        -- DSP Version doesn't exist yet
        local numhits = 1;
        local accmod = 1;
        local dmgmod = 2;
        local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT,1,1.2,1.5);
        local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_BLUNT,info.hitslanded);

        if (math.random(1,10) == 5) then
            target:addStatusEffect(EFFECT_AMNESIA, 10, 0, 10);
        end

        -- skill:setMsg(msgBasic.MELEE); -- Single Target MSG
        skill:setMsg(msgBasic.MELEE_AOE); -- AoE MSG

        target:delHP(dmg);
        target:addTP(1);
        mob:addTP(12);

        return dmg;
    end
end;

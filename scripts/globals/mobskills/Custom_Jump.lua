---------------------------------------------------
-- Jump
-- Jumping Attack, only used by dragoons.
-- 100% TP: ??? / 200% TP: ??? / 300% TP: ???
---------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/monstertpmoves");

---------------------------------------------------

function onMobSkillCheck(target,mob,skill)
    if (mob:getPool() == 9665) then -- The Jumping Crab
        skill:setSkillAnimation(431);
    end

    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local numhits = 1;
    local accmod = 1;
    local dmgmod = 2;
    local info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
    local dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

    if (mob:getPool() == 9665) then -- The Jumping Crab
        if (skill:getID() == IDHERE) then
            numhits = 1;
            accmod = 2;
            dmgmod = 2.4;
            info = MobPhysicalMove(mob,target,skill,numhits,accmod,dmgmod,TP_NO_EFFECT);
            dmg = MobFinalAdjustments(info.dmg,mob,skill,target,MOBSKILL_PHYSICAL,MOBPARAM_SLASH,info.hitslanded);

            if (dmg > 0) then
                if (mob:hasStatusEffect(EFFECT_SPIRIT_SURGE)) then
                    mob:resetEnmity(target);
                    mob:addTP(3);
                end
                mob:addTP(12);
            end

            target:delHP(dmg);
            return dmg;
        end
    else
        -- DSP jump code
        target:delHP(dmg);

        if (dmg > 0) then
            mob:addTP(10);
        end

        return dmg;
    end
end;
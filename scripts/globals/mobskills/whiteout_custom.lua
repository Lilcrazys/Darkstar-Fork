---------------------------------------------
-- Whiteout
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/status");
require("scripts/globals/msg");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    return 0;
end;

function onMobWeaponSkill(target, mob, skill)
    local message = msgBasic.SKILL_MISS;
    local effect = EFFECT_SLEEP_II;

    if (MobStatusEffectMove(mob, target, EFFECT_SLEEP_II, 10, 0, 60) == msgBasic.ENFEEB_IS) then
        message = msgBasic.ENFEEB_IS;
    end

     -- Retail prolly keeps the sleep message, but we're switching to curse IF it lands.
     -- This is the only reason we don't just pass the sleep one into skill:setMsg()
     -- Since MobStatusEffectMove() returns the message already.
    if (MobStatusEffectMove(mob, target, EFFECT_CURSE_I, 50, 0, 60) == msgBasic.ENFEEB_IS) then
        effect = EFFECT_CURSE_I;
        message = msgBasic.ENFEEB_IS;
    end

    skill:setMsg(message);

    -- When used by Isarukitsck, all "Little Wingman" switch to his target
    if (mob:getPool() == 9888) then
        for wingman = mob:getID()+1, mob:getID()+3 do
            if (GetMobByID(wingman:isAlive())) then
                local enmityList = wingman:getEnmityList();
                for _, players in pairs(enmityList) do
                    wingman:resetEnmity(players.entity);
                end

                wingman:updateEnmity(target);
            end
        end
    end

    return effect;
  --[[
    -- Hypothetical DSP ver, which does not exist yet..
    skill:setMsg(MobStatusEffectMove(mob, target, EFFECT_SLEEP_II, 10, 0, 60));
    -- MobStatusEffectMove(mob, target, ZOMBIE EFFECT HERE, 50, 0, 60); -- Prevents healing, can only be removed by whm "sacrifice" spell.

    -- When used by Isarukitsck, all "Little Wingman" switch to his target
    if (mob:getPool() == POOL ID HERE) then
        for wingman = mob:getID()+1, mob:getID()+3 do
            if (GetMobByID(wingman:isAlive())) then
                local enmityList = wingman:getEnmityList();
                for _, players in pairs(enmityList) do
                    wingman:resetEnmity(players);
                end

                wingman:updateEnmity(target);
            end
        end
    end

    return effect;
  ]]
end;

-----------------------------------
-- Ability: Caster's Roll
-- Enhances "Fast Cast" effect for party members within area of effect. 
-- Optimal Job: None
-- Lucky Number: 2
-- Unlucky Number: 7
-- Level: 79
--
-- Die Roll    | Fast Cast%   
-- --------    -------  
-- 1           |+6
-- 2           |+15     
-- 3           |+7     
-- 4           |+8     
-- 5           |+9     
-- 6           |+10     
-- 7           |+5     
-- 8           |+11      
-- 9           |+12    
-- 10          |+13     
-- 11          |+20     
-- Bust        |-10    
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/ability");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------

function onAbilityCheck(player,target,ability)
    local effectID = EFFECT_CASTERS_ROLL
    ability:setRange(ability:getRange() + player:getMod(MOD_ROLL_RANGE));
    if (player:hasStatusEffect(effectID)) then
        return msgBasic.ROLL_ALREADY_ACTIVE,0;
    elseif atMaxCorsairBusts(player) then
        return msgBasic.CANNOT_PERFORM,0;
    else
        return 0,0;
    end
end;

function onUseAbility(caster,target,ability,action)
    if (caster:getID() == target:getID()) then
        corsairSetup(caster, ability, action, EFFECT_CASTERS_ROLL, JOBS.COR);
    end
    local total = caster:getLocalVar("corsairRollTotal")
    return applyRoll(caster,target,ability,action,total)
end;

function applyRoll(caster,target,ability,action,total)
    local duration = 300 + caster:getMerit(MERIT_WINNING_STREAK)
    local effectpowers = {6, 15, 7, 8, 9, 10, 5, 11, 12, 13, 20, -10}
    local effectpower = effectpowers[total];
--    if (caster:getLocalVar("corsairRollBonus") == 1 and total < 12) then -- TODO Add AF3
--        effectpower = effectpower + 15 --  TODO Add Logic for Phantom Roll+
--    end
    if (caster:getMainJob() == JOBS.COR and caster:getMainLvl() < target:getMainLvl()) then
        effectpower = effectpower * (caster:getMainLvl() / target:getMainLvl());
    elseif (caster:getSubJob() == JOBS.COR and caster:getSubLvl() < target:getMainLvl()) then
        effectpower = effectpower * (caster:getSubLvl() / target:getMainLvl());
    end
    if (target:addCorsairRoll(caster:getMainJob(), caster:getMerit(MERIT_BUST_DURATION), EFFECT_CASTERS_ROLL, effectpower, 0, duration, caster:getID(), total, MOD_FASTCAST) == false) then
        ability:setMsg(msgBasic.ROLL_MAIN_FAIL);
    elseif total > 11 then
        ability:setMsg(msgBasic.DOUBLEUP_BUST);
    end
    return total;
end

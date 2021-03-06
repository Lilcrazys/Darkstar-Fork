-----------------------------------
-- Ability: Bolter's Roll
-- Increases Movement speed for party members with area of effect.
-- Optimal Job: None
-- Lucky Number: 3
-- Unlucky Number: 9
-- Level: 76
--
-- Die Roll    | %   
-- --------    -------  
-- 1           |+6     
-- 2           |+6     
-- 3           |+16     
-- 4           |+8     
-- 5           |+8     
-- 6           |+10     
-- 7           |+10     
-- 8           |+12      
-- 9           |+4     
-- 10          |+14     
-- 11          |+20     
-- Bust        |0     
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/ability");
require("scripts/globals/status");
require("scripts/globals/msg");
-----------------------------------

function onAbilityCheck(player,target,ability)
    local effectID = EFFECT_BOLTERS_ROLL
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
        corsairSetup(caster, ability, action, EFFECT_BOLTERS_ROLL, JOBS.COR);
    end
    local total = caster:getLocalVar("corsairRollTotal")
    return applyRoll(caster,target,ability,action,total)
end;

function applyRoll(caster,target,ability,action,total)
    local duration = 300 + caster:getMerit(MERIT_WINNING_STREAK)
    local effectpowers = {6, 6, 16, 8, 8, 10, 10, 12, 4, 14, 20, 0}
    local effectpower = effectpowers[total];
--    if (caster:getLocalVar("corsairRollBonus") == 1 and total < 12) then -- TODO Replace this with AF3 Buff 
--        effectpower = effectpower + 15  -- TODO Add Logic for Phantom Roll +
--    end
    if (caster:getMainJob() == JOBS.COR and caster:getMainLvl() < target:getMainLvl()) then
        effectpower = effectpower * (caster:getMainLvl() / target:getMainLvl());
    elseif (caster:getSubJob() == JOBS.COR and caster:getSubLvl() < target:getMainLvl()) then
        effectpower = effectpower * (caster:getSubLvl() / target:getMainLvl());
    end
    if (target:addCorsairRoll(caster:getMainJob(), caster:getMerit(MERIT_BUST_DURATION), EFFECT_BOLTERS_ROLL, effectpower, 0, duration, caster:getID(), total, MOD_MOVE) == false) then
        ability:setMsg(msgBasic.ROLL_MAIN_FAIL);
    elseif total > 11 then
        ability:setMsg(msgBasic.DOUBLEUP_BUST);
    end
    return total;
end

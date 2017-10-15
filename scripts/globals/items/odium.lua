-----------------------------------------
-- ID: 20605
-- Item: Odium
-- Additional Effect: DEATH
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/msg");
-----------------------------------

function onAdditionalEffect(player,target,damage)
    local MESSAGE = msgBasic.ADD_EFFECT_STATUS;
    local procRate = 3;

    -- AddEffect Death does not Proc on Notorious Monsters
    if (target:isMob()) then
        if (target:isMobType(MOBTYPE_NOTORIOUS)) then
            return 0,0,0;
        end
    end

    -- Now continue with normal resistance and random number checks..
    if (procRate < math.random(1,100) or applyResistanceAddEffect(player,target,ELE_DARK,0) <= 0.5) then
        -- If random number beats procRate OR if effect is resisted, return all zero
        return 0,0,0;
    else
        -- It's clobberin time!
        target:setHP(0)
        return SUBEFFECT_DEATH, MESSAGE, EFFECT_KO;
    end
end;

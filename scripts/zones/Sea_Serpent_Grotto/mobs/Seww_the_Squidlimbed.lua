-----------------------------------
-- Area: Seas Serpent Grotto
--  NM:  Seww the Squidlimbed
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_1");
        if (KILLED < 4) then
            killer:setVar("C_TRIAL_OBJ_1", KILLED + 1);
        end
        cTrialProgress(killer,RELIC);
    end
end;
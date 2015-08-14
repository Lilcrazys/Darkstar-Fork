-----------------------------------
-- Area: The Sanctuary of ZiTah
--  NM:  Keeper of Halidom
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_6");
        if (KILLED < 4) then
            killer:setVar("C_TRIAL_OBJ_6", KILLED + 1);
        end
        cTrialProgress(killer,RELIC);
    end
end;
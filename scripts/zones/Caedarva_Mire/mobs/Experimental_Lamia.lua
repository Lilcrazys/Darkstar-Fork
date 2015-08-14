-----------------------------------
-- Area: Caedarva Mire
--  ZNM: Experimental Lamia
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_4");
        if (KILLED < 4) then
            killer:setVar("C_TRIAL_OBJ_4", KILLED + 1);
        end
        cTrialProgress(killer,MYTHIC);
    end
end;
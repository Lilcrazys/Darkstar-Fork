-----------------------------------
-- Area: Lufaise Meadows
--  NM:  Megalobugard
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- OnMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end; 

-----------------------------------
-- OnMobDeath Action
-----------------------------------

function onMobDeath(mob,killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_2");
        if (KILLED < 4) then
            killer:setVar("C_TRIAL_OBJ_2", KILLED + 1);
        end
        cTrialProgress(killer,RELIC);
    end
end;
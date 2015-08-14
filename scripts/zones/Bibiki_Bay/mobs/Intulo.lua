-----------------------------------
-- Area: Bibiki Bay
--  NM:  Intulo
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_5");
        if (KILLED < 4) then
            killer:setVar("C_TRIAL_OBJ_5", KILLED + 1);
        end
        cTrialProgress(killer,RELIC);
    end
end;
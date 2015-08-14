-----------------------------------
-- Area: Halvung
--  ZNM: Dextrose
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

    -- Custom (Mythic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        local KILLED = killer:getVar("C_TRIAL_OBJ_5");
        if (KILLED < 5) then
            killer:setVar("C_TRIAL_OBJ_5", KILLED + 1);
        end
        cTrialProgress(killer,MYTHIC);
    end
end;
-----------------------------------
-- Area: Caedarva Mire
--  ZNM: Experimental Lamia
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Custom Trial Check
    cTrialProgress(player, 2, "mythic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;
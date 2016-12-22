-----------------------------------
-- Area: Yuhtunga Jungle
--  NM:  Mischievous Micholas
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
    cTrialProgress(player, 1, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;
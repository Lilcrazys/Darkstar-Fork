-----------------------------------
-- Area: Lufaise Meadows
--  NM:  Megalobugard
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- OnMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- OnMobDeath Action
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
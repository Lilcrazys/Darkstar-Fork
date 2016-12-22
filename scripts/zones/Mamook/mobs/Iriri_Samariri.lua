-----------------------------------
-- Area: Mamook
--  ZNM: Iriri Samariri
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
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

function onMobDeath(mob, player, isKiller)

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Custom Trial Check
    cTrialProgress(player, 1, "mythic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;
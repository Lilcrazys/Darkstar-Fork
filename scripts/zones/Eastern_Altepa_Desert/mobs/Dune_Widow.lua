-----------------------------------
-- Area: Eastern Altepa Desert (114)
--   NM: Dune_Widow
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

function onMobDespawn(mob)
end;

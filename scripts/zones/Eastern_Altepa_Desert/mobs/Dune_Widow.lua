-----------------------------------
-- Area: Eastern Altepa Desert (114)
--   NM: Dune_Widow
-----------------------------------

require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, RELIC, 3);
    end

    -- Set Dune_Widow's Window Open Time
    local wait = math.random(1,5) * 3600;
    SetServerVariable("[POP]Dune_Widow", os.time(t) + wait); -- 1-5 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Dune_Widow");
    SetServerVariable("[PH]Dune_Widow", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;


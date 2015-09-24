-----------------------------------
-- Area: Eastern Altepa Desert (114)
--  NM:  Dune_Widow
-----------------------------------

require("scripts/globals/spoofchat");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)

    -- Set Dune_Widow's Window Open Time
    wait = math.random((1),(5)) * 3600
    SetServerVariable("[POP]Dune_Widow", os.time(t) + wait); -- 1-5 hours
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    PH = GetServerVariable("[PH]Dune_Widow");
    SetServerVariable("[PH]Dune_Widow", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

    -- Custom (Relic) Trial Code
    if (cTrialItemEquipped(killer) == true) then
        cTrialProgress(killer, RELIC, 3);
    end

end;


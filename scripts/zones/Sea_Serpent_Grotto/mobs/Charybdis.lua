----------------------------------
-- Area: Sea Serpent Grotto
--   NM: Charybdis
-----------------------------------

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)

    mob:setMobMod(MOBMOD_MULTI_HIT, 5);

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Charybdis Window Open Time
    local wait = math.random(3600,5800) -- 1-2 hours
    SetServerVariable("[POP]Charybdis", os.time() + wait );
    DeterMob(mob:getID(), true);

    -- Set PH back to normal, then set to respawn spawn
    local PH = GetServerVariable("[PH]Charybdis");
    SetServerVariable("[PH]Charybdis", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;
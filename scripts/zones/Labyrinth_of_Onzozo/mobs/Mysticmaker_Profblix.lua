----------------------------------
-- Area: Labyrinth of Onzozo
--   NM: Mysticmaker Profblix
-----------------------------------

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer,ally)

    checkGoVregime(ally,mob,771,2);
    checkGoVregime(ally,mob,772,2);
    checkGoVregime(ally,mob,774,2);

    -- Set Mysticmaker's spawnpoint and respawn time (1-1.5 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random((3600),(5400)));

end;
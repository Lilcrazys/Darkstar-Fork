----------------------------------
-- Area: Labyrinth of Onzozo
--   NM: Mysticmaker Profblix
-----------------------------------

function onMobDeath(mob, player, isKiller)

    checkGoVregime(player,mob,771,2);
    checkGoVregime(player,mob,772,2);
    checkGoVregime(player,mob,774,2);
end;

function onMobDespawn(mob)

    -- Set Mysticmaker's spawnpoint and respawn time (1-1.5 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random((3600),(5400)));

end;

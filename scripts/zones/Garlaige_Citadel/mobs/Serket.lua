-----------------------------------
-- Area: Garlaige Citadel (200)
--  NM:  Serket
-----------------------------------
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(SERKET_BREAKER);
end;

function onMobDespawn(mob)

    -- Set Serket's spawnpoint and respawn time (1-2 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(3600,5800));

end;

-----------------------------------
-- Area: Rolanberry Fields (110)
--  HMN: Simurgh
-----------------------------------
require("scripts/globals/titles");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobFight(mob,target)
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(SIMURGH_POACHER);
end;

function onMobDespawn(mob)

    -- Set Simurgh's spawnpoint and respawn time (1-2 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(3600,5800));

end;

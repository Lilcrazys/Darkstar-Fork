-----------------------------------
-- Area: Castle Zvahl Baileys (161)
--   NM: Duke_Haborym
-----------------------------------

require("scripts/globals/status");

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE,30);
    mob:setMobMod(MOBMOD_SOUND_RANGE,30);

    -- addMod
    mob:addMod(MOD_STR,7);
    mob:addMod(MOD_DEX,5);
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_TRIPLE_ATTACK,15);
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)

    -- Set Duke_Haborym's spawnpoint and respawn time (21-24 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(75600, 86400));

end;
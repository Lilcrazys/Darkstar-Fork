-----------------------------------
-- Area: Ifrit's Cauldron
--  NM:  Ash Dragon
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_STR,7);
    mob:addMod(MOD_DEX,5);
    mob:addMod(MOD_ACC,200);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(DRAGON_ASHER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Custom Trial Check
    cTrialProgress(player, 3, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set ASh Dragon's spawnpoint and respawn time (21-24 hours)
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random(75600,86400));

end;

-----------------------------------
-- Area: Ifrit's Cauldron
-- NPC:  Ash Dragon
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_STR,7);
    mob:addMod(MOD_DEX,5);
    mob:addMod(MOD_ACC,200);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------
function onMobFight(mob,target)
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(DRAGON_ASHER);

    -- Set ASh Dragon's spawnpoint and respawn time (21-24 hours))
    UpdateNMSpawnPoint(mob:getID());
    mob:setRespawnTime(math.random((75600),(86400)));
end;
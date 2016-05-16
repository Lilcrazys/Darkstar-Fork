-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Bomblix_Flamefinger
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MATT,15);
    mob:addMod(MOD_MACC,500);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_FIRES_AND_FLARES) == false) then
        player:addKeyItem(ATMA_OF_FIRES_AND_FLARES);
        player:messageSpecial(6385, ATMA_OF_FIRES_AND_FLARES);
    end
end;


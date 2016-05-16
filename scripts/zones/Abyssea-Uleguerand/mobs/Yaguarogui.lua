-----------------------------------
--  Area: Abyssea - Uleguerand (253)
--   Mob: Yaguarogui
-----------------------------------
package.loaded["scripts/zones/Abyssea-Uleguerand/TextIDs"] = nil;
require("scripts/zones/Abyssea-Uleguerand/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-50);
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_SUN_EATER) == false) then
        player:addKeyItem(ATMA_OF_THE_SUN_EATER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_SUN_EATER);
    end
end;
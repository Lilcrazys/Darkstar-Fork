-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Khalamari
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/TextIDs");
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
    local CHANCE = 50;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_DRIFTER) == false) then
        player:addKeyItem(ATMA_OF_THE_DRIFTER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_DRIFTER);
    end
end;
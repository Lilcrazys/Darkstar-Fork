-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Blanga
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

function onMobDeath(mob, killer, ally)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_THE_STONE_GOD) == false) then
        ally:addKeyItem(ATMA_OF_THE_STONE_GOD);
        ally:messageSpecial(6385, ATMA_OF_THE_STONE_GOD);
    end
end;
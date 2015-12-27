-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Bloodeye_Vileberry
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

function onMobDeath(mob, killer, ally)
    local CHANCE = 45;
    if (math.random(0,99) < CHANCE and ally:hasKeyItem(ATMA_OF_CLOAK_AND_DAGGER) == false) then
        ally:addKeyItem(ATMA_OF_CLOAK_AND_DAGGER);
        ally:messageSpecial(6385, ATMA_OF_CLOAK_AND_DAGGER);
    end
end;
-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Khalamari
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
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

function onMobDeath(mob,killer)
    local CHANCE = 50;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_DRIFTER) == false) then
        killer:addKeyItem(ATMA_OF_THE_DRIFTER);
        killer:messageSpecial(6385, ATMA_OF_THE_DRIFTER);
    end
end;
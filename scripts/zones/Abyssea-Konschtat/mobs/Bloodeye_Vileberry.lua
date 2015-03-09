-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Bloodeye_Vileberry
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
    WeaknessTriggerSet(mob,target,ws,spell);
end;

-----------------------------------
-- onMobFight
-----------------------------------


function onMobFight(mob,target)
    TriggerHint(mob,target);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
    local CHANCE = 45;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_CLOAK_AND_DAGGER) == false) then
        killer:addKeyItem(ATMA_OF_CLOAK_AND_DAGGER);
        killer:messageSpecial(6385, ATMA_OF_CLOAK_AND_DAGGER);
    end
end;


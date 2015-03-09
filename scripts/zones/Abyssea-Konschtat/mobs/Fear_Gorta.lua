-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Fear_Gorta
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
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(AZURE_ABYSSITE_OF_THE_REAPER) == false) then
        killer:addKeyItem(AZURE_ABYSSITE_OF_THE_REAPER);
        killer:messageSpecial(6385, AZURE_ABYSSITE_OF_THE_REAPER);
    end
end;
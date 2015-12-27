-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Fear_Gorta
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
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(AZURE_ABYSSITE_OF_THE_REAPER) == false) then
        ally:addKeyItem(AZURE_ABYSSITE_OF_THE_REAPER);
        ally:messageSpecial(6385, AZURE_ABYSSITE_OF_THE_REAPER);
    end
end;
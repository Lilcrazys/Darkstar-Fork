-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Berstuk
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;

require("scripts/zones/Abyssea-Attohwa/TextIDs");
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
    local CHANCE = 40;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_GLUTINOUS_OOZE) == false) then
        player:addKeyItem(ATMA_OF_THE_GLUTINOUS_OOZE);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_GLUTINOUS_OOZE);
    end
end;

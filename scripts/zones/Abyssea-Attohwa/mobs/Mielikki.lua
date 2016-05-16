-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Mielikki
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
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(JADE_ABYSSITE_OF_SOJOURN) == false) then
        player:addKeyItem(JADE_ABYSSITE_OF_SOJOURN);
        player:messageSpecial(KEYITEM_OBTAINED, JADE_ABYSSITE_OF_SOJOURN);
    end
end;


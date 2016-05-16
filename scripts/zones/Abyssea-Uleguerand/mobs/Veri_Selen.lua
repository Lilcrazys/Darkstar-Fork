-----------------------------------
--  Area: Abyssea - Uleguerand (253)
--   Mob: Veri_Selen
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

function onMobDeath(mob, player, isKiller)
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(VERMILLION_ABYSSITE_OF_GUERDON) == false) then
        player:addKeyItem(VERMILLION_ABYSSITE_OF_GUERDON);
        player:messageSpecial(KEYITEM_OBTAINED, VERMILLION_ABYSSITE_OF_GUERDON);
    end
end;
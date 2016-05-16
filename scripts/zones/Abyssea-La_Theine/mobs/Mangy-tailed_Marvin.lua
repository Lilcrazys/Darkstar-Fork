-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Mangy-tailed_Marvin
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
require("scripts/zones/Abyssea-La_Theine/TextIDs");
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(SCARLET_ABYSSITE_OF_LENITY) == false) then
        player:addKeyItem(SCARLET_ABYSSITE_OF_LENITY);
        player:messageSpecial(6385, SCARLET_ABYSSITE_OF_LENITY);
    end
end;


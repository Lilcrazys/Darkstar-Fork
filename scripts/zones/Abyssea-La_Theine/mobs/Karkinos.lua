-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Karkinos
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_TWIN_CLAW) == false) then
        player:addKeyItem(ATMA_OF_THE_TWIN_CLAW);
        player:messageSpecial(6385, ATMA_OF_THE_TWIN_CLAW);
    end
end;


-----------------------------------
--  Area: Abyssea - Uleguerand (253)
--   Mob: Indrik
-----------------------------------
require("scripts/zones/Abyssea-Uleguerand/textIDs");
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
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_HOLY_MOUNTAIN) == false) then
        killer:addKeyItem(ATMA_OF_THE_HOLY_MOUNTAIN);
        killer:messageSpecial(6385, ATMA_OF_THE_HOLY_MOUNTAIN);
    end
end;


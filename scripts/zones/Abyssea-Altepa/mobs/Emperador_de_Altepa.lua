-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Emperador_de_Altepa
-----------------------------------
require("scripts/zones/Abyssea-Altepa/textIDs");
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_SAND_EMPEROR) == false) then
        killer:addKeyItem(ATMA_OF_THE_SAND_EMPEROR);
        killer:messageSpecial(6385, ATMA_OF_THE_SAND_EMPEROR);
    end
end;


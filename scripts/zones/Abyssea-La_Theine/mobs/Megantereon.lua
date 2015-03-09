-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Megantereon
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/textIDs");
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
    local CHANCE = 55;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(BLOODIED_SABER_TOOTH) == false) then
        killer:addKeyItem(BLOODIED_SABER_TOOTH);
        killer:messageSpecial(6385, BLOODIED_SABER_TOOTH);
    elseif (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_SAVAGE_TIGER) == false) then
        killer:addKeyItem(ATMA_OF_THE_SAVAGE_TIGER);
        killer:messageSpecial(6385, ATMA_OF_THE_SAVAGE_TIGER);
    end
end;


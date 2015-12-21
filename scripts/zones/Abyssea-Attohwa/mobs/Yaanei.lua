-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Yaanei
-----------------------------------
require("scripts/zones/Abyssea-Attohwa/textIDs");
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
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_THE_IMPREGNABLE_TOWER) == false) then
        ally:addKeyItem(ATMA_OF_THE_IMPREGNABLE_TOWER);
        ally:messageSpecial(6385, ATMA_OF_THE_IMPREGNABLE_TOWER);
    end
end;


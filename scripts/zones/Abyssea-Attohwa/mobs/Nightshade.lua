-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Nightshade
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
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_THE_NOXIOUS_BLOOM) == false) then
        ally:addKeyItem(ATMA_OF_THE_NOXIOUS_BLOOM);
        ally:messageSpecial(6385, ATMA_OF_THE_NOXIOUS_BLOOM);
    end
end;


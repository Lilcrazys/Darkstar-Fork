-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Gaizkin
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
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(BLOTCHED_DOOMED_TONGUE) == false) then
        ally:addKeyItem(BLOTCHED_DOOMED_TONGUE);
        ally:messageSpecial(6385, BLOTCHED_DOOMED_TONGUE);
    end
end;


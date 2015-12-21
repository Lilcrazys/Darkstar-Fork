-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Wherwetrice
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
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(JADE_ABYSSITE_OF_EXPERTISE) == false) then
        ally:addKeyItem(JADE_ABYSSITE_OF_EXPERTISE);
        ally:messageSpecial(6385, JADE_ABYSSITE_OF_EXPERTISE);
    end
end;


-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Gieremund
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Attohwa/TextIDs");
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
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(RUSTED_HOUND_COLLAR) == false) then
        ally:addKeyItem(RUSTED_HOUND_COLLAR);
        ally:messageSpecial(6385, RUSTED_HOUND_COLLAR);
    end
end;


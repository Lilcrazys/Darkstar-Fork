-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Tunga
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
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(DISTENDED_CHIGOE_ABDOMEN) == false) then
        ally:addKeyItem(DISTENDED_CHIGOE_ABDOMEN);
        ally:messageSpecial(6385, DISTENDED_CHIGOE_ABDOMEN);
    end
end;


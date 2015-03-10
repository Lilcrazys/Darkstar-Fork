-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Tunga
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

function onMobDeath(mob,killer)
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(DISTENDED_CHIGOE_ABDOMEN) == false) then
        killer:addKeyItem(DISTENDED_CHIGOE_ABDOMEN);
        killer:messageSpecial(6385, DISTENDED_CHIGOE_ABDOMEN);
    end
end;


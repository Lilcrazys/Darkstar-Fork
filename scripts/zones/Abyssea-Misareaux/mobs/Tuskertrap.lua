-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Tuskertrap
-----------------------------------
require("scripts/zones/Abyssea-Misareaux/textIDs");
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
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(SAPPHIRE_ABYSSITE_OF_LENITY) == false) then
        killer:addKeyItem(SAPPHIRE_ABYSSITE_OF_LENITY);
        killer:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_LENITY);
    end
end;


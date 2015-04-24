-----------------------------------
--  Area: Abyssea - Uleguerand (253)
--   Mob: Veri_Selen
-----------------------------------

require("scripts/zones/Abyssea-Uleguerand/textIDs");
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
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(VERMILLION_ABYSSITE_OF_GUERDON) == false) then
        killer:addKeyItem(VERMILLION_ABYSSITE_OF_GUERDON);
        killer:messageSpecial(6385, VERMILLION_ABYSSITE_OF_GUERDON);
    end
end;
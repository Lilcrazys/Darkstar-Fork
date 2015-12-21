-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Mangy-tailed_Marvin
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

function onMobDeath(mob, killer, ally)
    local CHANCE = 40;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(SCARLET_ABYSSITE_OF_LENITY) == false) then
        ally:addKeyItem(SCARLET_ABYSSITE_OF_LENITY);
        ally:messageSpecial(6385, SCARLET_ABYSSITE_OF_LENITY);
    end
end;


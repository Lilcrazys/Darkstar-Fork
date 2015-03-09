-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Chasmic_Hornet
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

function onMobDeath(mob,killer)
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(SCARLET_ABYSSITE_OF_PERSPICACITY) == false) then
        killer:addKeyItem(SCARLET_ABYSSITE_OF_PERSPICACITY);
        killer:messageSpecial(6385, SCARLET_ABYSSITE_OF_PERSPICACITY);
    end
end;


-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Pascerpot
-----------------------------------
require("scripts/zones/Abyssea-Vunkerl/textIDs");
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

function onMobDeath(mob, player, isKiller)
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(CRIMSON_ABYSSITE_OF_CONFLUENCE) == false) then
        player:addKeyItem(CRIMSON_ABYSSITE_OF_CONFLUENCE);
        player:messageSpecial(KEYITEM_OBTAINED, CRIMSON_ABYSSITE_OF_CONFLUENCE);
    end
end;


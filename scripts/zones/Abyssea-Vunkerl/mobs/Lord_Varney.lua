-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Lord_Varney
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
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(IMBRUED_VAMPYR_FANG) == false) then
        player:addKeyItem(IMBRUED_VAMPYR_FANG);
        player:messageSpecial(KEYITEM_OBTAINED, IMBRUED_VAMPYR_FANG);
    end
end;


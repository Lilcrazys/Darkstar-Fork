-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Dvalinn
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(DECAYED_DVERGR_TOOTH) == false) then
        player:addKeyItem(DECAYED_DVERGR_TOOTH);
        player:messageSpecial(KEYITEM_OBTAINED, DECAYED_DVERGR_TOOTH);
    end
end;

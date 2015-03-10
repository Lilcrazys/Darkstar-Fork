-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Iktomi
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

function onMobDeath(mob,killer)
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(CRIMSON_ABYSSITE_OF_DESTINY) == false) then
        killer:addKeyItem(CRIMSON_ABYSSITE_OF_DESTINY);
        killer:messageSpecial(6385, CRIMSON_ABYSSITE_OF_DESTINY);
    end
end;


-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Iku-Turso
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
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(GLOSSY_SEA_MONK_SUCKER) == false) then
        killer:addKeyItem(GLOSSY_SEA_MONK_SUCKER);
        killer:messageSpecial(6385, GLOSSY_SEA_MONK_SUCKER);
    end
end;



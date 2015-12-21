-----------------------------------
--  Area: Abyssea - Vunkerl (217)
--   Mob: Chhir_Batti
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

function onMobDeath(mob, killer, ally)
    local CHANCE = 30;
    if (math.random(0,99) < CHANCE  and ally:hasKeyItem(ATMA_OF_THE_MURKY_MIASMA) == false) then
        ally:addKeyItem(ATMA_OF_THE_MURKY_MIASMA);
        ally:messageSpecial(6385, ATMA_OF_THE_MURKY_MIASMA);
    end
end;


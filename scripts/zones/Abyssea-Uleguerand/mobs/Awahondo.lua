-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Awahondo
-----------------------------------

require("scripts/zones/Abyssea-Uleguerand/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- OnMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);

    -- addMod
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-100);
    mob:addMod(MOD_DOUBLE_ATTACK,35);
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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(DECAYING_DIREMITE_FANG) == false) then
        killer:addKeyItem(DECAYING_DIREMITE_FANG);
        killer:messageSpecial(6385, DECAYING_DIREMITE_FANG);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_PERSISTENT_PREDATOR) == false) then
        killer:addKeyItem(ATMA_OF_THE_PERSISTENT_PREDATOR);
        killer:messageSpecial(6385, ATMA_OF_THE_PERSISTENT_PREDATOR);
    end
end;
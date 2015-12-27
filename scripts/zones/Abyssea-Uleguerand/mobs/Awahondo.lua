-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Awahondo
-----------------------------------
package.loaded["scripts/zones/Abyssea-Uleguerand/TextIDs"] = nil;
require("scripts/zones/Abyssea-Uleguerand/TextIDs");
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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(DECAYING_DIREMITE_FANG) == false) then
        ally:addKeyItem(DECAYING_DIREMITE_FANG);
        ally:messageSpecial(6385, DECAYING_DIREMITE_FANG);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_THE_PERSISTENT_PREDATOR) == false) then
        ally:addKeyItem(ATMA_OF_THE_PERSISTENT_PREDATOR);
        ally:messageSpecial(6385, ATMA_OF_THE_PERSISTENT_PREDATOR);
    end
end;
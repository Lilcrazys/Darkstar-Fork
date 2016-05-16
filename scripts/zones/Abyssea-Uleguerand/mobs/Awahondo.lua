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

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(DECAYING_DIREMITE_FANG) == false) then
        player:addKeyItem(DECAYING_DIREMITE_FANG);
        player:messageSpecial(KEYITEM_OBTAINED, DECAYING_DIREMITE_FANG);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_PERSISTENT_PREDATOR) == false) then
        player:addKeyItem(ATMA_OF_THE_PERSISTENT_PREDATOR);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_PERSISTENT_PREDATOR);
    end
end;
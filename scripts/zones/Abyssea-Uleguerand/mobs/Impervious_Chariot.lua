-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Impervious_Chariot
-----------------------------------
package.loaded["scripts/zones/Abyssea-Uleguerand/TextIDs"] = nil;
require("scripts/zones/Abyssea-Uleguerand/TextIDs");
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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;
    local SPELL_ID = 713;
    local CHANCE = 25;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(DENTED_CHARIOT_SHIELD) == false) then
        player:addKeyItem(DENTED_CHARIOT_SHIELD);
        player:messageSpecial(KEYITEM_OBTAINED, DENTED_CHARIOT_SHIELD);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(VERMILLION_ABYSSITE_OF_KISMET) == false) then
        player:addKeyItem(VERMILLION_ABYSSITE_OF_KISMET);
        player:messageSpecial(KEYITEM_OBTAINED, VERMILLION_ABYSSITE_OF_KISMET);
    end

    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end
end;
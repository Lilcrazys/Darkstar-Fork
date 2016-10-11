-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Long-Barreled_Chariot
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Altepa/TextIDs");
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
    local ATMA_CHANCE = 20;
    local SPELL_ID = 713;
    local CHANCE = 25;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(RUSTED_CHARIOT_GEAR) == false) then
        player:addKeyItem(RUSTED_CHARIOT_GEAR);
        player:messageSpecial(KEYITEM_OBTAINED, RUSTED_CHARIOT_GEAR);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(EMERALD_ABYSSITE_OF_FORTUNE) == false) then
        player:addKeyItem(EMERALD_ABYSSITE_OF_FORTUNE);
        player:messageSpecial(KEYITEM_OBTAINED, EMERALD_ABYSSITE_OF_FORTUNE);
    end

    if (math.random(0,99) < CHANCE and player:getMainJob() == JOBS.BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end
end;

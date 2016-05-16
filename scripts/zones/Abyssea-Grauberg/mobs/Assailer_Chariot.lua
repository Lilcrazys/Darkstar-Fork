-----------------------------------
--  Area: Abyssea - Grauberg (254)
--   Mob: Assailer_Chariot
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

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

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(WARPED_CHARIOT_PLATE) == false) then
        player:addKeyItem(WARPED_CHARIOT_PLATE);
        player:messageSpecial(KEYITEM_OBTAINED, WARPED_CHARIOT_PLATE);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(INDIGO_ABYSSITE_OF_SOJOURN) == false) then
        player:addKeyItem(INDIGO_ABYSSITE_OF_SOJOURN);
        player:messageSpecial(KEYITEM_OBTAINED, INDIGO_ABYSSITE_OF_SOJOURN);
    end

    if (math.random(0,99) < CHANCE and player:getMainJob() == JOB_BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end
end;

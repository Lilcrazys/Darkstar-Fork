-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Kur
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

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(BEGRIMED_DRAGON_HIDE) == false) then
        player:addKeyItem(BEGRIMED_DRAGON_HIDE);
        player:messageSpecial(KEYITEM_OBTAINED, BEGRIMED_DRAGON_HIDE);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_BLIGHTED_BREATH) == false) then
        player:addKeyItem(ATMA_OF_BLIGHTED_BREATH);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_BLIGHTED_BREATH);
    end
end;
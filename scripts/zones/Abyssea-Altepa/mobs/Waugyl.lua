-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Waugyl
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
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(WAUGYLS_CLAW) == false) then
        player:addKeyItem(WAUGYLS_CLAW);
        player:messageSpecial(KEYITEM_OBTAINED, WAUGYLS_CLAW);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(EMERALD_ABYSSITE_OF_SOJOURN) == false) then
        player:addKeyItem(EMERALD_ABYSSITE_OF_SOJOURN);
        player:messageSpecial(KEYITEM_OBTAINED, EMERALD_ABYSSITE_OF_SOJOURN);
    end
end;


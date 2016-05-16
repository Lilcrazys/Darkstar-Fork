-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Dhorme_Khimaira
-----------------------------------
package.loaded["scripts/zones/Abyssea-Uleguerand/TextIDs"] = nil;
require("scripts/zones/Abyssea-Uleguerand/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- OMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(MOD_MATT,375);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_ACC,150);
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

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(TORN_KHIMAIRA_WING) == false) then
        player:addKeyItem(TORN_KHIMAIRA_WING);
        player:messageSpecial(KEYITEM_OBTAINED, TORN_KHIMAIRA_WING);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_PURGATORY) == false) then
        player:addKeyItem(ATMA_OF_PURGATORY);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_PURGATORY);
    end
end;
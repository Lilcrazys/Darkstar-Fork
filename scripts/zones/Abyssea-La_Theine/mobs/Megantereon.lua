-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Megantereon
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
require("scripts/zones/Abyssea-La_Theine/TextIDs");
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

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(BLOODIED_SABER_TOOTH) == false) then
        player:addKeyItem(BLOODIED_SABER_TOOTH);
        player:messageSpecial(KEYITEM_OBTAINED, BLOODIED_SABER_TOOTH);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_SAVAGE_TIGER) == false) then
        player:addKeyItem(ATMA_OF_THE_SAVAGE_TIGER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_SAVAGE_TIGER);
    end
end;

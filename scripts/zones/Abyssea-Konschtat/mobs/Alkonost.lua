-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Alkonost
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/TextIDs");
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

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(TATTERED_HIPPOGRYPH_WING) == false) then
        player:addKeyItem(TATTERED_HIPPOGRYPH_WING);
        player:messageSpecial(KEYITEM_OBTAINED, TATTERED_HIPPOGRYPH_WING);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_GALES) == false) then
        player:addKeyItem(ATMA_OF_GALES);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_GALES);
    end
end;
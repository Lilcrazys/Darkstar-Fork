-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Alkonost
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
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


function onMobDeath(mob,killer)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(TATTERED_HIPPOGRYPH_WING) == false) then
        killer:addKeyItem(TATTERED_HIPPOGRYPH_WING);
        killer:messageSpecial(6385, TATTERED_HIPPOGRYPH_WING);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_GALES) == false) then
        killer:addKeyItem(ATMA_OF_GALES);
        killer:messageSpecial(6385, ATMA_OF_GALES);
    end
end;
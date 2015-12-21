-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Raskovnik
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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(FETID_RAFFLESIA_STALK) == false) then
        ally:addKeyItem(FETID_RAFFLESIA_STALK);
        ally:messageSpecial(6385, FETID_RAFFLESIA_STALK);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_THRASHING_TENDRILS) == false) then
        ally:addKeyItem(ATMA_OF_THRASHING_TENDRILS);
        ally:messageSpecial(6385, ATMA_OF_THRASHING_TENDRILS);
    end
end;
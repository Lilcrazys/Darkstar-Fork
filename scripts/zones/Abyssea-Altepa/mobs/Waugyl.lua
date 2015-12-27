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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(WAUGYLS_CLAW) == false) then
        ally:addKeyItem(WAUGYLS_CLAW);
        ally:messageSpecial(6385, WAUGYLS_CLAW);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(EMERALD_ABYSSITE_OF_SOJOURN) == false) then
        ally:addKeyItem(EMERALD_ABYSSITE_OF_SOJOURN);
        ally:messageSpecial(6385, EMERALD_ABYSSITE_OF_SOJOURN);
    end
end;


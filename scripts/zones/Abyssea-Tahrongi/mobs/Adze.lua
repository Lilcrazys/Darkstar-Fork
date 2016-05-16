-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Mictlantecuhtli
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
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
    mob:addMod(MOD_MATT,90);
    mob:addMod(MOD_MACC,300);
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
    local CHANCE = 17;
    local KI = 60
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_CALAMITY) == false) then
        player:addKeyItem(ATMA_OF_CALAMITY);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_CALAMITY);
    end

    if (math.random(0,99) < KI  and player:hasKeyItem(STICKY_GNAT_WING) == false) then
        player:addKeyItem(STICKY_GNAT_WING);
        player:messageSpecial(KEYITEM_OBTAINED, STICKY_GNAT_WING);
    end
end;


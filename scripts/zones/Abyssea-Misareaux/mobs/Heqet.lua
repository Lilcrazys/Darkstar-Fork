-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Heqet
-----------------------------------
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
require("scripts/zones/Abyssea-Misareaux/TextIDs");
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
    mob:addMod(MOD_MATT,5);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_MEVA,100);
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
    local CHANCE = 60;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(DOFFED_POROGGO_HAT) == false) then
        player:addKeyItem(DOFFED_POROGGO_HAT);
        player:messageSpecial(KEYITEM_OBTAINED, DOFFED_POROGGO_HAT);
    end
end;


-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Amun
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Attohwa/TextIDs");
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
    mob:addMod(MOD_INT,2);
    mob:addMod(MOD_MATT,15);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_MACC,500);
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(SHRIVELED_HECTEYES_STALK) == false) then
        player:addKeyItem(SHRIVELED_HECTEYES_STALK);
        player:messageSpecial(KEYITEM_OBTAINED, SHRIVELED_HECTEYES_STALK);
    end
end;


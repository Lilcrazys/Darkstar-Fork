-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Drekavac
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
    mob:addMod(MOD_INT,90);
    mob:addMod(MOD_MATT,375);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_MEVA,200);
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(WRITHING_GHOST_FINGER) == false) then
        player:addKeyItem(WRITHING_GHOST_FINGER);
        player:messageSpecial(KEYITEM_OBTAINED, WRITHING_GHOST_FINGER);
    end
end;


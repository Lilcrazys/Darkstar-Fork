-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Npfundlwa
-----------------------------------
package.loaded["scripts/zones/Abyssea-Misareaux/TextIDs"] = nil;
require("scripts/zones/Abyssea-Misareaux/TextIDs");
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
    local CHANCE = 20;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(SAPPHIRE_ABYSSITE_OF_FORTUNE) == false) then
        player:addKeyItem(SAPPHIRE_ABYSSITE_OF_FORTUNE);
        player:messageSpecial(6385, SAPPHIRE_ABYSSITE_OF_FORTUNE);
    end
end;


-----------------------------------
-- Area: Monastic Cavern
--  NM:  Overlord Bakgodek
-----------------------------------
package.loaded["scripts/zones/Monastic_Cavern/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Monastic_Cavern/TextIDs");
require("scripts/globals/titles");
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_ACC,250);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,50);
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

function onMobEngaged(mob,target)
    -- Needs to be zone wide message
    -- mob:messagePublic(mob,ORC_KING_ENGAGE);
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(OVERLORD_OVERTHROWER);
    -- Needs to be zone wide message
    -- mob:messagePublic(mob,ORC_KING_DEATH);
end;
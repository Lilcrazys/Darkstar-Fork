-----------------------------------
-- Area: Abyssea - Uleguerand (253)
--  NM:  Apademak
-----------------------------------
package.loaded["scripts/zones/Abyssea-Uleguerand/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Uleguerand/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");

-----------------------------------
-- OnMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 45);

    -- addMod
    mob:addMod(MOD_DEF,130);
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_MATT,20);
    mob:addMod(MOD_MACC,80);
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
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_WAR_LION) == false) then
        player:addKeyItem(ATMA_OF_THE_WAR_LION);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_WAR_LION);
    end
end;

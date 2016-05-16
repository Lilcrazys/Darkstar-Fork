-----------------------------------
-- Area: Abyssea - Tahrongi (45)
--   NM: Glavoid
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,1700);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,50);
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
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;
    player:addTitle(GLAVOID_STAMPEDER);

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(CHIPPED_SANDWORM_TOOTH) == false) then
        player:addKeyItem(CHIPPED_SANDWORM_TOOTH);
        player:messageSpecial(KEYITEM_OBTAINED, CHIPPED_SANDWORM_TOOTH);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_DUNES) == false) then
        player:addKeyItem(ATMA_OF_DUNES);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_DUNES);
    end
end;
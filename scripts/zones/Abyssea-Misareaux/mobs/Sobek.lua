-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Sobek
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
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1500);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK, 25);
    mob:setMod(MOD_REFRESH, 100);

    mob:addMod(MOD_DEF,140);
    mob:addMod(MOD_MDEF,50);
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_GNARLED_HORN) == false) then
        player:addKeyItem(ATMA_OF_THE_GNARLED_HORN);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_GNARLED_HORN);
    end
end;


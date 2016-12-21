-----------------------------------
-- Area: Abyssea - Attohwa (215)
--  NM:  Itzpapalotl
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Attohwa/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,10);
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_MACC,1800);

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
    player:addTitle(ITZPAPALOTL_DECLAWER);

    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_CLAWED_BUTTERFLY) == false) then
        player:addKeyItem(ATMA_OF_THE_CLAWED_BUTTERFLY);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_CLAWED_BUTTERFLY);
    end
end;
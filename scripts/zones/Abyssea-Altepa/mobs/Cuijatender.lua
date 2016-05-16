-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Cuijatender
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
require("scripts/zones/Abyssea-Altepa/TextIDs");
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
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MATT,375);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_EVA,-100);
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_A_THOUSAND_NEEDLES) == false) then
        player:addKeyItem(ATMA_OF_A_THOUSAND_NEEDLES);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_A_THOUSAND_NEEDLES);
    end
end;


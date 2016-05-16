-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Titlacauan
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
    mob:addMod(MOD_MATT,15);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_MEVA,50);
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
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_UNDYING) == false) then
        player:addKeyItem(ATMA_OF_THE_UNDYING);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_UNDYING);
    end
end;


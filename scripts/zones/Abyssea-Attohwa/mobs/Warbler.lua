-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Warbler
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
require("scripts/globals/abyssea");
require("scripts/zones/Abyssea-Attohwa/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");
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
    mob:addMod(MOD_MATT,100);
    mob:addMod(MOD_MACC,1500);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
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
    local CHANCE = 10;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(JADE_ABYSSITE_OF_MERIT) == false) then
        player:addKeyItem(JADE_ABYSSITE_OF_MERIT);
        player:messageSpecial(KEYITEM_OBTAINED, JADE_ABYSSITE_OF_MERIT);
    end
end;
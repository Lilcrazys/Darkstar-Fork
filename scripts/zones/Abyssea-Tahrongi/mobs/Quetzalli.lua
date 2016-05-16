-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Ophanim
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
require("scripts/zones/Abyssea-Tahrongi/TextIDs");
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
    mob:addMod(MOD_ATT,90);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_REGEN,90);
    mob:addMod(MOD_REGAIN,20);
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
    local CHANCE = 35;
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(VIRIDIAN_ABYSSITE_OF_AVARICE) == false) then
        player:addKeyItem(VIRIDIAN_ABYSSITE_OF_AVARICE);
        player:messageSpecial(KEYITEM_OBTAINED, VIRIDIAN_ABYSSITE_OF_AVARICE);
    end
end;


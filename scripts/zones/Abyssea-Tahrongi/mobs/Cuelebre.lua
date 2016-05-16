-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Cuelebre
-----------------------------------
package.loaded["scripts/zones/Abyssea-Tahrongi/TextIDs"] = nil;
-----------------------------------
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
    mob:addMod(MOD_MATT,90);
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
    local KI_CHANCE = 30;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(VIRIDIAN_ABYSSITE_OF_DESTINY) == false) then
        player:addKeyItem(VIRIDIAN_ABYSSITE_OF_DESTINY);
        player:messageSpecial(KEYITEM_OBTAINED, VIRIDIAN_ABYSSITE_OF_DESTINY);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_CLAW) == false) then
        player:addKeyItem(ATMA_OF_THE_CLAW);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_CLAW);
    end
end;

-----------------------------------
--  Area: Abyssea - Tahrongi (45)
--   Mob: Chukwa
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

function onMobDeath(mob, killer, ally)
    local KI_CHANCE = 30;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and ally:hasKeyItem(VIRIDIAN_ABYSSITE_OF_DESTINY) == false) then
        ally:addKeyItem(VIRIDIAN_ABYSSITE_OF_DESTINY);
        ally:messageSpecial(6385, VIRIDIAN_ABYSSITE_OF_DESTINY);
    end

    if (ATMA_CHANCE > math.random(0,99) and ally:hasKeyItem(ATMA_OF_THE_CLAW) == false) then
        ally:addKeyItem(ATMA_OF_THE_CLAW);
        ally:messageSpecial(6385, ATMA_OF_THE_CLAW);
    end
end;

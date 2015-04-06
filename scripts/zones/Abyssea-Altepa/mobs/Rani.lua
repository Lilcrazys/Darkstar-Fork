-----------------------------------
--  Area: Abyssea - Altepa (218)
--   NM:  Rani
-----------------------------------
require("scripts/zones/Abyssea-Altepa/textIDs");
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
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_UFASTCAST, 55);
    -- addMod
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,900);
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,125);
    mob:addMod(MOD_MDEF,75);
    mob:addMod(MOD_DEF,140);
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

function onMobDeath(mob,killer)
    local CHANCE = 15;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH) == false) then
        killer:addKeyItem(ATMA_OF_THE_MERCILESS_MATRIARCH);
        killer:messageSpecial(6385, ATMA_OF_THE_MERCILESS_MATRIARCH);
    end
end;

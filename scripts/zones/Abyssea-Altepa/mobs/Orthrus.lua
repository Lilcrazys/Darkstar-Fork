-----------------------------------
--  Area: Abyssea - Altepa (218)
--   NM:  Orthrus
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
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_MACC,1900);
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_MDEF,100);
    mob:addMod(MOD_DEF,150);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
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
    local CHANCE = 10;
    if (math.random(0,99) < CHANCE  and killer:hasKeyItem(ATMA_OF_THE_BROTHER_WOLF) == false) then
        killer:addKeyItem(ATMA_OF_THE_BROTHER_WOLF);
        killer:messageSpecial(6385, ATMA_OF_THE_BROTHER_WOLF);
    end
end;

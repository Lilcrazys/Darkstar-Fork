-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Dragua
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
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 75);
    mob:setMod(MOD_MATT,275);
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);


    -- addMod
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 10;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(IVORY_ABYSSITE_OF_MERIT) == false) then
        player:addKeyItem(IVORY_ABYSSITE_OF_MERIT);
        player:messageSpecial(KEYITEM_OBTAINED, IVORY_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_EARTH_WYRM) == false) then
        player:addKeyItem(ATMA_OF_THE_EARTH_WYRM);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_EARTH_WYRM);
    end
end;
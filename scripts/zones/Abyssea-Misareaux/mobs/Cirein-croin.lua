-----------------------------------
-- Area: Abyssea - Misareaux (216)
--  NM:  Cirein-croin
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
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
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,1700);
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

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 20;
    local ATMA_CHANCE = 15;
    player:addTitle(CIREINCROIN_HARPOONER);

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT) == false) then
        player:addKeyItem(SAPPHIRE_ABYSSITE_OF_MERIT);
        player:messageSpecial(KEYITEM_OBTAINED, SAPPHIRE_ABYSSITE_OF_MERIT);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_DEEP_DEVOURER) == false) then
        player:addKeyItem(ATMA_OF_THE_DEEP_DEVOURER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_DEEP_DEVOURER);
    end
end;

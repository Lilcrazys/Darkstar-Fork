-----------------------------------
-- Area: Abyssea - Grauberg (254)
--  NM:  Amphitrite
-----------------------------------
package.loaded["scripts/zones/Abyssea-Grauberg/TextIDs"] = nil;
require("scripts/zones/Abyssea-Grauberg/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:setMod(MOD_DOUBLE_ATTACK, 100)
    mob:setMod(MOD_MATT, 100);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_MDEF,100);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 30);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC, 1950);
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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (target:hasStatusEffect(EFFECT_POISON)) then
        target:delStatusEffect(EFFECT_POISON);
    end

    duration = 30 * applyResistanceAddEffect(mob, target, ELE_WATER, EFFECT_POISON)
    utils.clamp(duration,1,30);
    target:addStatusEffect(EFFECT_POISON, 100, 3, duration);

    return SUBEFFECT_POISON, 160, EFFECT_POISON;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 15;
    player:addTitle(AMPHITRITE_SHUCKER);
    
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_SEA_DAUGHTER) == false) then
        player:addKeyItem(ATMA_OF_THE_SEA_DAUGHTER);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_SEA_DAUGHTER);
    end
end;
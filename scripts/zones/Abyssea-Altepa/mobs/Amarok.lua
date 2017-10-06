-----------------------------------
-- Area: Abyssea - Altepa (218)
--  NM:  Amarok
-----------------------------------
package.loaded["scripts/zones/Abyssea-Altepa/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Altepa/TextIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/msg");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 50);

    -- addMod
    mob:setMod(MOD_MATT,75);
    mob:setMod(MOD_MACC,900);
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_MDEF,75);
    mob:addMod(MOD_DEF,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
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

    duration = 10 * applyResistanceAddEffect(mob, target, ELE_WATER, EFFECT_POISON)
    utils.clamp(duration,1,30);

    target:addStatusEffect(EFFECT_POISON, 50, 3, duration);
    -- mob:resetEnmity(target);

    return SUBEFFECT_POISON, chatType.ADD_EFFECT_STATUS, EFFECT_POISON;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 30;

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(STEAMING_CERBERUS_TONGUE) == false) then
        player:addKeyItem(STEAMING_CERBERUS_TONGUE);
        player:messageSpecial(KEYITEM_OBTAINED, STEAMING_CERBERUS_TONGUE);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_LONE_WOLF) == false) then
        player:addKeyItem(ATMA_OF_THE_LONE_WOLF);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_LONE_WOLF);
    end
end;
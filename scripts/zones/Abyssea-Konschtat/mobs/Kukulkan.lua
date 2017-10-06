-----------------------------------
-- Area: Abyssea - Konschtat (15)
--  Mob: Kukulkan
-----------------------------------
package.loaded["scripts/zones/Abyssea-Konschtat/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-Konschtat/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/titles");
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
    mob:setMod(MOD_REGAIN,30);
    mob:setMod(MOD_REGEN,50);

    -- addMod
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_MACC,1700);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_DEF,130);
    mob:setMod(MOD_TRIPLE_ATTACK, 30)
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
        return 0, 0, 0;
    else
        local duration = 30 * applyResistanceAddEffect(mob, target, ELE_WATER, EFFECT_POISON)
        duartion = utils.clamp(duration,1,30);
        target:addStatusEffect(EFFECT_POISON, 100, 3, duration);
        return SUBEFFECT_POISON, chatType.ADD_EFFECT_STATUS, EFFECT_POISON;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;
    player:addTitle(KUKULKAN_DEFANGER);

    if (KI_CHANCE > math.random(0,99) and player:hasKeyItem(VENOMOUS_PEISTE_CLAW) == false) then
        player:addKeyItem(VENOMOUS_PEISTE_CLAW);
        player:messageSpecial(KEYITEM_OBTAINED, VENOMOUS_PEISTE_CLAW);
    end

    if (ATMA_CHANCE > math.random(0,99) and player:hasKeyItem(ATMA_OF_THE_NOXIOUS_FANG) == false) then
        player:addKeyItem(ATMA_OF_THE_NOXIOUS_FANG);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_NOXIOUS_FANG);
    end
end;

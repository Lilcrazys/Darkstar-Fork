-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Kukulkan
-----------------------------------
package.loaded["scripts/globals/abyssea"] = nil;
-----------------------------------

require("scripts/zones/Abyssea-Konschtat/textIDs");
require("scripts/globals/abyssea");
require("scripts/globals/status");
require("scripts/globals/keyitems");
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
    mob:setMod(MOD_MACC,700);
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

function onMobDeath(mob,killer)
    local KI_CHANCE = 60;
    local ATMA_CHANCE = 15;

    if (KI_CHANCE > math.random(0,99) and killer:hasKeyItem(VENOMOUS_PEISTE_CLAW) == false) then
        killer:addKeyItem(VENOMOUS_PEISTE_CLAW);
        killer:messageSpecial(6385, VENOMOUS_PEISTE_CLAW);
    end

    if (ATMA_CHANCE > math.random(0,99) and killer:hasKeyItem(ATMA_OF_THE_NOXIOUS_FANG) == false) then
        killer:addKeyItem(ATMA_OF_THE_NOXIOUS_FANG);
        killer:messageSpecial(6385, ATMA_OF_THE_NOXIOUS_FANG);
    end
end;
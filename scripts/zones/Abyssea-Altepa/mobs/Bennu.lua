-----------------------------------
-- Area: Abyssea - Altepa (218)
--  NM:  Bennu
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
    -- setMobmod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:setMod(MOD_MATT,95);
    mob:setMod(MOD_MACC,1900);
    mob:addMod(MOD_ACC,50);
    mob:addMod(MOD_ATT,125);
    mob:addMod(MOD_MDEF,75);
    mob:addMod(MOD_DEF,130);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_DOUBLE_ATTACK, 30);
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
end

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    -- Wiki says nothing about proc rate, going with 80% for now.
    -- I remember it going off every hit when I fought him.
    local chance = 90;
    local LV_diff = target:getMainLvl() - mob:getMainLvl();

    if (target:getMainLvl() > mob:getMainLvl()) then
        chance = chance - 5 * LV_diff;
        chance = utils.clamp(chance, 5, 95);
    end

    if (math.random(0,99) >= chance) then
        return 0,0,0;
    else
        local INT_diff = mob:getStat(MOD_INT) - target:getStat(MOD_INT);

        if (INT_diff > 20) then
            INT_diff = 20 + (INT_diff - 20) / 2;
        end

        local dmg = INT_diff+LV_diff+damage/2;
        local params = {};
        params.bonusmab = 0;
        params.includemab = false;
        dmg = addBonusesAbility(mob, ELE_WIND, target, dmg, params);
        dmg = dmg * applyResistanceAddEffect(mob,target,ELE_WIND,0);
        dmg = adjustForTarget(target,dmg,ELE_WIND);

        if (dmg < 0) then
            dmg = 10
        end

        dmg = finalMagicNonSpellAdjustments(mob,target,ELE_WIND,dmg);

        return SUBEFFECT_WIND_DAMAGE,163,dmg;
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local CHANCE = 20;
    player:addTitle(BENNU_DEPLUMER);
  
    if (math.random(0,99) < CHANCE  and player:hasKeyItem(ATMA_OF_THE_ASCENDING_ONE) == false) then
        player:addKeyItem(ATMA_OF_THE_ASCENDING_ONE);
        player:messageSpecial(KEYITEM_OBTAINED, ATMA_OF_THE_ASCENDING_ONE);
    end
end;
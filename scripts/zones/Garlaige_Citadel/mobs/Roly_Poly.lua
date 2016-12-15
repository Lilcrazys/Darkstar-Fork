-----------------------------------
-- Area: EDIT ME
-- VWNM: Roly Poly
-----------------------------------
package.loaded["scripts/zones/Garlaige_Citadel/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Garlaige_Citadel/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    --setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 15);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2500); -- todo: covert to correct amoutn of addMod
    mob:setMod(MOD_MATT,125);  -- todo: covert to correct amoutn of addMod

    -- addMod
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Roly_2hr = mob:getLocalVar("Roly_2hr");


    if (mob:getHPP() <= 40) then
        if (Roly_2hr == 0) then
            mob:useMobAbility(433); -- Benediction
            mob:setLocalVar("Roly_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)

    local chance = 70;
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
        dmg = addBonusesAbility(mob, ELE_LIGHT, target, dmg, params);
        dmg = dmg * applyResistanceAddEffect(mob,target,ELE_LIGHT,0);
        dmg = adjustForTarget(target,dmg,ELE_LIGHT);
        dmg = finalMagicNonSpellAdjustments(mob,target,ELE_LIGHT,dmg);

        if (dmg < 0) then
            dmg = 0
        end

        return SUBEFFECT_LIGHT_DAMAGE,163,dmg;
    end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)

    if (isKiller == true) then
        local RND1 = math.random(1,8);
        if (RND1 == 1) then
            player:addTreasure(8919, mob); -- Ifritear
        elseif (RND1 == 2) then
            player:addTreasure(8920, mob); -- Leviatear
        elseif (RND1 == 3) then
            player:addTreasure(8921, mob); -- Ramutear
        elseif (RND1 == 4) then
            player:addTreasure(8922, mob); -- Garutear
        elseif (RND1 == 5) then
            player:addTreasure(8923, mob); -- Titatear
        elseif (RND1 == 6) then
            player:addTreasure(8924, mob); -- Shivatear
        elseif (RND1 == 7) then
            player:addTreasure(8925, mob); -- Carbutear
        elseif (RND1 == 8) then
            player:addTreasure(8926, mob); -- Fenritear
        end
    end

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Roly-Poly Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_II"), 0) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",0,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (player:isMaskFull(player:getVar("WHITE_STRATUM_II"),6) == true) then
                player:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                player:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                player:setVar("WHITE_STRATUM_II", 0);
                player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_III);
            end
        end
    end

    player:addCurrency("bayld", 200);
    player:addExp(10000);
end;
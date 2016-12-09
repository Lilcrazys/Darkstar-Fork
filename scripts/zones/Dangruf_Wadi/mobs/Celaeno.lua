-----------------------------------
-- Area: Dangruf Wadi
-- VWNM: Celaeno
-- Notes:
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,250);

    -- Other
    mob:SetMobSkillAttack(4170); -- Enable Special Animation for melee attacks.
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t));

    if (isKiller == true) then
        local RND1 = math.random(1,8);
        if (RND1 == 1) then
            player:addTreasure(8919); -- Ifritear
        elseif (RND1 == 2) then
            player:addTreasure(8920); -- Leviatear
        elseif (RND1 == 3) then
            player:addTreasure(8921); -- Ramutear
        elseif (RND1 == 4) then
            player:addTreasure(8922); -- Garutear
        elseif (RND1 == 5) then
            player:addTreasure(8923); -- Titatear
        elseif (RND1 == 6) then
            player:addTreasure(8924); -- Shivatear
        elseif (RND1 == 7) then
            player:addTreasure(8925); -- Carbutear
        elseif (RND1 == 8) then
            player:addTreasure(8926); -- Fenritear
        end
    end
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
    local Used2hr = mob:getLocalVar("Used2hr");

    if (mob:getHPP() <= 15) then
        if (Used2hr == 2) then
            mob:useMobAbility(692); -- ChainSpell
            mob:setLocalVar("Used2hr", 3);
        end
    elseif (mob:getHPP() <= 40) then
        if (Used2hr == 1) then
            mob:useMobAbility(692); -- ChainSpell
            mob:setLocalVar("Used2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Used2hr == 0) then
            mob:useMobAbility(689); -- Benediction
            mob:setLocalVar("Used2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:hasKeyItem(INDIGO_STRATUM_ABYSSITE_IV)) then
        if (player:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
            if (player:getMaskBit(player:getVar("VW_3_NATIONS"), 1) == false) then
                player:setMaskBit(player:getVar("VW_3_NATIONS"),"VW_3_NATIONS",1,true);
            end
        end

        player:addKeyItem(INDIGO_STRATUM_ABYSSITE);
        player:delKeyItem(INDIGO_STRATUM_ABYSSITE_IV);
        player:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE);
    end

    player:addCurrency("bayld", 125);
    player:addExp(10000);
end;
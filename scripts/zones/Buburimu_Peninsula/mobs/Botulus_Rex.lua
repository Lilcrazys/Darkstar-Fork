-----------------------------------
-- Area: Buburimu Peninsula
-- VWNM: Botulus Rex
-----------------------------------
package.loaded["scripts/zones/Buburimu_Peninsula/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Buburimu_Peninsula/TextIDs");
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,20);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_DMGMAGIC,-64);
    mob:addMod(MOD_STUNRES,50);

    -- Other
    mob:SetMobSkillAttack(4169);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9645,0,8919,50); -- Ifritear
        SetDropRate(9645,0,8920,0); -- Leviatear
        SetDropRate(9645,0,8921,0); -- Ramutear
        SetDropRate(9645,0,8922,0); -- Garutear
        SetDropRate(9645,0,8923,0); -- Titatear
        SetDropRate(9645,0,8924,0); -- Shivatear
        SetDropRate(9645,0,8925,0); -- Carbutear
        SetDropRate(9645,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9645,0,8919,0); -- Ifritear
        SetDropRate(9645,0,8920,50); -- Leviatear
        SetDropRate(9645,0,8921,0); -- Ramutear
        SetDropRate(9645,0,8922,0); -- Garutear
        SetDropRate(9645,0,8923,0); -- Titatear
        SetDropRate(9645,0,8924,0); -- Shivatear
        SetDropRate(9645,0,8925,0); -- Carbutear
        SetDropRate(9645,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9645,0,8919,0); -- Ifritear
        SetDropRate(9645,0,8920,0); -- Leviatear
        SetDropRate(9645,0,8921,50); -- Ramutear
        SetDropRate(9645,0,8922,0); -- Garutear
        SetDropRate(9645,0,8923,0); -- Titatear
        SetDropRate(9645,0,8924,0); -- Shivatear
        SetDropRate(9645,0,8925,0); -- Carbutear
        SetDropRate(9645,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9645,0,8919,0); -- Ifritear
        SetDropRate(9645,0,8920,0); -- Leviatear
        SetDropRate(9645,0,8921,0); -- Ramutear
        SetDropRate(9645,0,8922,50); -- Garutear
        SetDropRate(9645,0,8923,0); -- Titatear
        SetDropRate(9645,0,8924,0); -- Shivatear
        SetDropRate(9645,0,8925,0); -- Carbutear
        SetDropRate(9645,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9645,0,8919,0); -- Ifritear
        SetDropRate(9645,0,8920,0); -- Leviatear
        SetDropRate(9645,0,8921,0); -- Ramutear
        SetDropRate(9645,0,8922,0); -- Garutear
        SetDropRate(9645,0,8923,50); -- Titatear
        SetDropRate(9645,0,8924,0); -- Shivatear
        SetDropRate(9645,0,8925,0); -- Carbutear
        SetDropRate(9645,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9645,0,8919,0); -- Ifritear
        SetDropRate(9645,0,8920,0); -- Leviatear
        SetDropRate(9645,0,8921,0); -- Ramutear
        SetDropRate(9645,0,8922,0); -- Garutear
        SetDropRate(9645,0,8923,0); -- Titatear
        SetDropRate(9645,0,8924,50); -- Shivatear
        SetDropRate(9645,0,8925,0); -- Carbutear
        SetDropRate(9645,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9645,0,8919,0); -- Ifritear
        SetDropRate(9645,0,8920,0); -- Leviatear
        SetDropRate(9645,0,8921,0); -- Ramutear
        SetDropRate(9645,0,8922,0); -- Garutear
        SetDropRate(9645,0,8923,0); -- Titatear
        SetDropRate(9645,0,8924,0); -- Shivatear
        SetDropRate(9645,0,8925,50); -- Carbutear
        SetDropRate(9645,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9645,0,8919,0); -- Ifritear
        SetDropRate(9645,0,8920,0); -- Leviatear
        SetDropRate(9645,0,8921,0); -- Ramutear
        SetDropRate(9645,0,8922,0); -- Garutear
        SetDropRate(9645,0,8923,0); -- Titatear
        SetDropRate(9645,0,8924,0); -- Shivatear
        SetDropRate(9645,0,8925,0); -- Carbutear
        SetDropRate(9645,0,8926,50); -- Fenritear
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
    local Botulus_Used = mob:getLocalVar("Botulus");

    if (mob:getHPP() <= 80) then
        if (Botulus_Used == 0) then
            mob:useMobAbility(692); -- Chainspell
            mob:setLocalVar("Botulus", 1);
        end
    elseif (mob:getHPP() <= 60) then
        if (Botulus_Used == 1) then
            mob:useMobAbility(692); -- Chainspell
            mob:setLocalVar("Botulus", 2);
        end
    elseif (mob:getHPP() <= 40) then
        if (Botulus_Used == 2) then
            mob:useMobAbility(692); -- Chainspell
            mob:setLocalVar("Botulus", 3);
        end
    elseif (mob:getHPP() <= 20) then
        if (Botulus_Used == 3) then
            mob:useMobAbility(692); -- Chainspell
            mob:setLocalVar("Botulus", 4);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Botulus Rex Kill
        if (player:getMaskBit(player:getVar("JEUNO_VW"), 4) == false) then
            player:setMaskBit(player:getVar("JEUNO_VW"),"JEUNO_VW",4,true);
        end

        if (player:isMaskFull(player:getVar("JEUNO_VW"),5) == true) then
            player:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        end
    end

    if (player:getQuestStatus(JEUNO, VW_OP_118_BUBURIMU_SQUALL) == QUEST_ACCEPTED) then
        player:completeQuest(JEUNO, VW_OP_118_BUBURIMU_SQUALL);
    end

    player:addCurrency("bayld", 600);
    player:addExp(10000);
end;
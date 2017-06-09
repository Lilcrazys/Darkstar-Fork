-----------------------------------
-- Area: Buburimu Peninsula
-- VWNM: Botulus Rex
-----------------------------------
package.loaded["scripts/zones/Buburimu_Peninsula/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Buburimu_Peninsula/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,20);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_DMGMAGIC, -25);
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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Botulus Rex Kill
        if (player:getMaskBit(player:getVar("JEUNO_VW"), 4) == false) then
            player:setMaskBit(player:getVar("JEUNO_VW"),"JEUNO_VW",4,true);
        end

        if (player:isMaskFull(player:getVar("JEUNO_VW"),5) == true) then
            player:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
            player:addKeyItem(WHITE_STRATUM_ABYSSITE);
            player:setVar("JEUNO_VW", 0);
            player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE);
        end
    end

    if (player:getQuestStatus(JEUNO, VW_OP_118_BUBURIMU_SQUALL) == QUEST_ACCEPTED) then
        player:completeQuest(JEUNO, VW_OP_118_BUBURIMU_SQUALL);
    end

    player:addCurrency("bayld", 600);
    player:addExp(3000);
end;
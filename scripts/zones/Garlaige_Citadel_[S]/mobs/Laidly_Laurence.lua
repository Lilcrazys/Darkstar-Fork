-----------------------------------
-- Area: Garlaige Citadel [S]
-- VWNM: Laidly Laurence
-----------------------------------
package.loaded["scripts/zones/Garlaige_Citadel_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Garlaige_Citadel_[S]/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/status");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_MACC,1950); -- Todo: convert to correct amount of AddMod
    mob:setMod(MOD_MATT,125);  -- Todo: convert to correct amount of AddMod
    mob:setMod(MOD_ACC,1950);  -- Todo: convert to correct amount of AddMod

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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Laidly Laurence Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_II"), 1) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",1,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (player:isMaskFull(player:getVar("WHITE_STRATUM_II"),6) == true) then
                player:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                player:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                player:setVar("WHITE_STRATUM_II", 0);
            end
        end
    end

    player:addCurrency("bayld", 200);
    player:addExp(10000);
end;
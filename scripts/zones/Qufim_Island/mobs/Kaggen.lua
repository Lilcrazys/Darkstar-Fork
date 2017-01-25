-----------------------------------
-- Area: ?
-- VWNM: Kaggen
-----------------------------------
package.loaded["scripts/zones/Qufim_Island/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Qufim_Island/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    mob:setMod(MOD_MACC,2000); -- Todo: convert to proper amount of addMod..
    mob:setMod(MOD_MATT,90);   -- Todo: convert to proper amount of addMod..
    mob:setMod(MOD_ACC,1600);  -- Todo: convert to proper amount of addMod..

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min

    -- Other
    mob:SetMobSkillAttack(4171);

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
    local Boost_Used = mob:getLocalVar("Boost");

    if (mob:getHPP() <= 40) then
        if (Boost_Used == 0) then
            mob:addMod(MOD_EVASION, 100);
            mob:setLocalVar("Boost", 1);
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

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_III)) then -- Kaggen Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_III"), 0) == false) then
            player:setMaskBit(player:getVar("WHITE_STRATUM_III"),"WHITE_STRATUM_III",0,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, REDRAFTED_BY_THE_DUCHY) == QUEST_COMPLETED) then
            if (player:isMaskFull(player:getVar("WHITE_STRATUM_III"),3) == true) then
                player:addKeyItem(WHITE_STRATUM_ABYSSITE_IV);
                player:delKeyItem(WHITE_STRATUM_ABYSSITE_III);
                player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_IV);
                player:setVar("WHITE_STRATUM_III", 0);
            end
        end
    end

    player:addCurrency("bayld", 450);
    player:addExp(3000);
end;

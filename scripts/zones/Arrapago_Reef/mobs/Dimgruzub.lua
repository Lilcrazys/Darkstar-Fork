-----------------------------------
-- Area: Arrapago Reef
-- VWNM: Dimgruzub
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_DOUBLE_ATTACK,25);

    -- addMod
    mob:addMod(MOD_MACC,200);
    mob:addMod(MOD_MATT,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- Dimgruzub takes 10x normal dmg where normal Qutrub take 2x on retail..
    -- ..But the base damage being mutlipled is so low, we're instead multiplying by far more than 10.
    mob:setMod(MOD_UDMGPHYS,1500);
    mob:setMod(MOD_UDMGBREATH,1500);
    mob:setMod(MOD_UDMGMAGIC,1500);
    mob:setMod(MOD_UDMGRANGE,1500);
    -- Its base stats were so stupid high that multiplying dmg was leading to massive variance.
    -- By cutting them we can us less dmg multiplier anyways..
    mob:addMod(MOD_DEF,-100);
    mob:addMod(MOD_VIT,-70);

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9670,8919,50); -- Ifritear
        SetDropRate(9670,8920,0); -- Leviatear
        SetDropRate(9670,8921,0); -- Ramutear
        SetDropRate(9670,8922,0); -- Garutear
        SetDropRate(9670,8923,0); -- Titatear
        SetDropRate(9670,8924,0); -- Shivatear
        SetDropRate(9670,8925,0); -- Carbutear
        SetDropRate(9670,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9670,8919,0); -- Ifritear
        SetDropRate(9670,8920,50); -- Leviatear
        SetDropRate(9670,8921,0); -- Ramutear
        SetDropRate(9670,8922,0); -- Garutear
        SetDropRate(9670,8923,0); -- Titatear
        SetDropRate(9670,8924,0); -- Shivatear
        SetDropRate(9670,8925,0); -- Carbutear
        SetDropRate(9670,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9670,8919,0); -- Ifritear
        SetDropRate(9670,8920,0); -- Leviatear
        SetDropRate(9670,8921,50); -- Ramutear
        SetDropRate(9670,8922,0); -- Garutear
        SetDropRate(9670,8923,0); -- Titatear
        SetDropRate(9670,8924,0); -- Shivatear
        SetDropRate(9670,8925,0); -- Carbutear
        SetDropRate(9670,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9670,8919,0); -- Ifritear
        SetDropRate(9670,8920,0); -- Leviatear
        SetDropRate(9670,8921,0); -- Ramutear
        SetDropRate(9670,8922,50); -- Garutear
        SetDropRate(9670,8923,0); -- Titatear
        SetDropRate(9670,8924,0); -- Shivatear
        SetDropRate(9670,8925,0); -- Carbutear
        SetDropRate(9670,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9670,8919,0); -- Ifritear
        SetDropRate(9670,8920,0); -- Leviatear
        SetDropRate(9670,8921,0); -- Ramutear
        SetDropRate(9670,8922,0); -- Garutear
        SetDropRate(9670,8923,50); -- Titatear
        SetDropRate(9670,8924,0); -- Shivatear
        SetDropRate(9670,8925,0); -- Carbutear
        SetDropRate(9670,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9670,8919,0); -- Ifritear
        SetDropRate(9670,8920,0); -- Leviatear
        SetDropRate(9670,8921,0); -- Ramutear
        SetDropRate(9670,8922,0); -- Garutear
        SetDropRate(9670,8923,0); -- Titatear
        SetDropRate(9670,8924,50); -- Shivatear
        SetDropRate(9670,8925,0); -- Carbutear
        SetDropRate(9670,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9670,8919,0); -- Ifritear
        SetDropRate(9670,8920,0); -- Leviatear
        SetDropRate(9670,8921,0); -- Ramutear
        SetDropRate(9670,8922,0); -- Garutear
        SetDropRate(9670,8923,0); -- Titatear
        SetDropRate(9670,8924,0); -- Shivatear
        SetDropRate(9670,8925,50); -- Carbutear
        SetDropRate(9670,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9670,8919,0); -- Ifritear
        SetDropRate(9670,8920,0); -- Leviatear
        SetDropRate(9670,8921,0); -- Ramutear
        SetDropRate(9670,8922,0); -- Garutear
        SetDropRate(9670,8923,0); -- Titatear
        SetDropRate(9670,8924,0); -- Shivatear
        SetDropRate(9670,8925,0); -- Carbutear
        SetDropRate(9670,8926,50); -- Fenritear
    end

end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobWeaponSkill Action
-----------------------------------

function onMobWeaponSkill(target, mob, skill)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local popTimerDelay = 120; -- For easy adjustment.
    local popTime = mob:getLocalVar("nextPetPop");
    local rndPos = math.random(1,2); -- So they aren't all stacked on Dimgruzub..
--[[
    if (os.time(t) > popTime) then
        if (GetMobAction(mob:getID()+1) == ACTION_NONE) then
            SpawnMob(mob:getID()+1):updateEnmity(target);
            GetMobByID(mob:getID()+1):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+2) == ACTION_NONE) then
            SpawnMob(mob:getID()+2):updateEnmity(target);
            GetMobByID(mob:getID()+2):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        end
    end]]
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (player:getQuestStatus(AHT_URHGAN, VW_OP_050_AHT_URGAN_ASSAULT) == QUEST_ACCEPTED) then -- Dimgruzub Kill
        if (player:getMaskBit(player:getVar("AMBER_STRATUM"), 0) == false) then
            player:setMaskBit(player:getVar("AMBER_STRATUM"),"AMBER_STRATUM",0,true);
        end

        if (player:isMaskFull(player:getVar("AMBER_STRATUM"),4) == true) then
            player:completeQuest(AHT_URHGAN, VW_OP_050_AHT_URGAN_ASSAULT);
            player:setVar("AMBER_STRATUM", 0);
        end
    end

    player:addCurrency("bayld", 900);
    player:addExp(10000);
end;
-----------------------------------
-- Area: EDIT ME
-- VWNM: ME TO
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
    mob:setMod(MOD_TERRORRES, 1000);

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
    local popTimerDelay = 60; -- For easy adjustment.
    local popTime = mob:getLocalVar("nextPetPop");
    local rndPos = math.random(0,2); -- So they aren't all unforgettably stacked..
    if (rndPos == 2) then
        rdnPos = -1;
    end

    if (os.time(t) > popTime) then
        if (GetMobAction(mob:getID()+1) == ACTION_NONE) then
            SpawnMob(mob:getID()+1):updateEnmity(target);
            GetMobByID(mob:getID()+1):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+2) == ACTION_NONE) then
            SpawnMob(mob:getID()+2):updateEnmity(target);
            GetMobByID(mob:getID()+2):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+3) == ACTION_NONE) then
            SpawnMob(mob:getID()+3):updateEnmity(target);
            GetMobByID(mob:getID()+3):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        elseif (GetMobAction(mob:getID()+4) == ACTION_NONE) then
            SpawnMob(mob:getID()+4):updateEnmity(target);
            GetMobByID(mob:getID()+4):setPos(mob:getXPos()+rndPos, mob:getYPos(), mob:getYPos()+rndPos);
            mob:setLocalVar("nextPetPop", os.time(t)+popTimerDelay);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("bayld", 550);
    player:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);
    DespawnMob(mob:getID()+3);
    DespawnMob(mob:getID()+4);

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

    if (player:hasKeyItem(ASHEN_STRATUM_ABYSSITE)) then -- Neith Kill
        if (player:getQuestStatus(OUTLANDS, VW_OP_054_ELSHIMO_LIST) == QUEST_ACCEPTED) then
            if (player:getMaskBit(player:getVar("VW_OP_054"), 1) == false) then
                player:setMaskBit(player:getVar("VW_OP_054"),"VW_OP_054",1,true);
            end
        else
            if (player:getMaskBit(player:getVar("ASHEN_STRATUM"), 4) == false) then
                player:setMaskBit(player:getVar("ASHEN_STRATUM"),"ASHEN_STRATUM",4,true);
            end

            if (player:isMaskFull(player:getVar("ASHEN_STRATUM"),6) == true) then
                player:addKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                player:delKeyItem(ASHEN_STRATUM_ABYSSITE);
                player:setVar("ASHEN_STRATUM", 0);
            end
        end
    end;
end;
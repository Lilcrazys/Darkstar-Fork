-----------------------------------
-- Area: Uleguerand Range
-- VWNM: Isarukitsck
-- Notes:
-- Isarukitsck gains damage reduction for each Little Wingman killed.
-- When Isarukitsck uses Whiteout, all Little Wingman will switch to Isarukitsck's target
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,150);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_MACC,100);
    mob:addMod(MOD_MATT,80);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_DOUBLE_ATTACK,25);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_REFRESH, 25);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REGEN, 50);

    -- Spawn Isarukitsck's Wingemen so he can impress them penguin ladies
    local rndXPos = math.random(0,2); -- So they aren't all stacked..
    local rndYPos = math.random(0,2); -- So they aren't all stacked..
    for wingman = mob:getID()+1, mob:getID()+3 do
        if (GetMobByID(wingman):isSpawned() == false) then
            SpawnMob(wingman):updateEnmity(target);
            GetMobByID(wingman):setPos(mob:getXPos()+rndXPos, mob:getYPos(), mob:getYPos()+rndYPos);
        end
    end
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
    local enmity = 0;
    for wingman = mob:getID()+1, mob:getID()+3 do
        if (GetMobByID(wingman:isAlive())) then
            enmity = GetMobByID(wingman):GetCE() + GetMobByID(wingman):GetVE();
            if (enmity == 0) then
                wingman:updateEnmity(target);
            end
        end
    end
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Wingman1 = mob:getID()+1;
    local Wingman2 = mob:getID()+2;
    local Wingman3 = mob:getID()+3;

    if (GetMobByID(Wingman1):isDead() and mob:getLocalVar("DT1") == 0) then
        mob:setLocalVar("DT1", 1);
        mob:addMod(MOD_DMG, -30);
    end

    if (GetMobByID(Wingman2):isDead() and mob:getLocalVar("DT2") == 0) then
        mob:setLocalVar("DT2", 1);
        mob:addMod(MOD_DMG, -30);
    end

    if (GetMobByID(Wingman3):isDead() and mob:getLocalVar("DT3") == 0) then
        mob:setLocalVar("DT3", 1);
        mob:addMod(MOD_DMG, -30);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    -- Check killer so that we only do this part once.
    if (isKiller == true) then
        -- Kill the wingmen..
        for wingman = mob:getID()+1, mob:getID()+3 do
            if (GetMobByID(wingman):isAlive()) then
                GetMobByID(wingman):setHP(0);
            end
        end

        -- Loot time! Adds one of these to the pool of this person's party/alliance.
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

    -- This part runs once on each party/alliance member.
    if (player:getQuestStatus(OTHER_AREAS, VW_OP_026_TAVNAZIAN_TERRORS) == QUEST_ACCEPTED) then
        if (player:getMaskBit(player:getVar("HYACINTH_STRATUM"), 3) == false) then
            player:setMaskBit(player:getVar("HYACINTH_STRATUM"),"HYACINTH_STRATUM",3,true);
        end

        if (player:isMaskFull(player:getVar("HYACINTH_STRATUM"),4) == true) then
            player:completeQuest(OTHER_AREAS, VW_OP_026_TAVNAZIAN_TERRORS);
            player:addQuest(OTHER_AREAS, VW_OP_004_BIBIKI_BOMBARDMENT);
            player:addKeyItem(HYACINTH_STRATUM_ABYSSITE_II);
            player:messageSpecial(KEYITEM_OBTAINED, HYACINTH_STRATUM_ABYSSITE_II);
        end
    end

    player:addCurrency("bayld", 750);
    player:addExp(3000);
end;

-----------------------------------
-- Area: Ifrits Cauldron
-- VWNM: Ildebrann
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    -- mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 25);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);
    mob:setMod(MOD_FIRE_AFFINITY_DMG, 5);
    mob:setMod(MOD_FIRE_AFFINITY_ACC, 5);
    mob:setMod(MOD_SLEEPRES,100);
    mob:setMod(MOD_SILENCERES,100);
    mob:setMod(MOD_STUNRES,25);
    mob:setMod(MOD_PARALYZERES,30);
    mob:setMod(MOD_HUMANOID_KILLER, 5);
    mob:setMod(MOD_FIRE_ABSORB, 100);
    mob:setMod(MOD_TERRORRES, 100);

    -- Temp
    mob:AnimationSub(0); -- reset
    mob:delStatusEffect(EFFECT_ALL_MISS);
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
    -- Being rewritten.
    --[[
    local popTime = mob:getLocalVar("nextPetPop");
    local helperOne = GetMobAction(mob:getID()+1);
    local helperTwo = GetMobAction(mob:getID()+2);

    -- Pop an add after 4 minutes..
    if (os.time() > popTime) then
        if (helperOne == ACTION_NONE) then
            SpawnMob(mob:getID()+1):updateEnmity(target);
            GetMobByID(mob:getID()+1):setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("nextPetPop", os.time()+360);
        elseif (helperTwo == ACTION_NONE) then
            SpawnMob(mob:getID()+2):updateEnmity(target);
            GetMobByID(mob:getID()+2):setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("nextPetPop", os.time()+360);
        end
    end

    -- Check if we are on the ground..
    local animSub = mob:AnimationSub();
    if (animSub == 0 or animSub == 2) then
        -- We are on the ground, check if we should be flying..
        if (helperOne ~= ACTION_NONE or helperTwo ~= ACTION_NONE) then
            mob:AnimationSub(1); -- fly
            mob:addStatusEffectEx(EFFECT_ALL_MISS, 0, 1, 0, 0);
            -- mob:SetMobSkillAttack(LIST_ID_HERE);
        end
    else
        -- We are flying, see if we should land..
        if (animSub == 1 and helperOne == ACTION_NONE and helperTwo == ACTION_NONE) then
            mob:useMobAbility(1282); -- touchdown
            -- mob:SetMobSkillAttack(0);
        end
    end
    ]]
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);

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

    if (player:hasKeyItem(ASHEN_STRATUM_ABYSSITE)) then -- Ildebrann Kill
        if (player:getQuestStatus(OUTLANDS, VW_OP_054_ELSHIMO_LIST) == QUEST_ACCEPTED) then
            if (player:getMaskBit(player:getVar("VW_OP_054"), 2) == false) then
                player:setMaskBit(player:getVar("VW_OP_054"),"VW_OP_054",2,true);
            end
        else
            if (player:getMaskBit(player:getVar("ASHEN_STRATUM"), 5) == false) then
                player:setMaskBit(player:getVar("ASHEN_STRATUM"),"ASHEN_STRATUM",5,true);
            end

            if (player:isMaskFull(player:getVar("ASHEN_STRATUM"),6) == true) then
                player:addKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                player:delKeyItem(ASHEN_STRATUM_ABYSSITE);
                player:setVar("ASHEN_STRATUM", 0);
            end
        end
    end

    player:addCurrency("bayld", 550);
    player:addExp(3000);
end;

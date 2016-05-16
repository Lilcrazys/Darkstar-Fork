-----------------------------------
-- Area: Ifrits Cauldron
-- VWNM: Ildebrann
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_DMGMAGIC, -128);
    mob:addMod(MOD_DMGRANGE, -50);
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
    mob:setMod(MOD_TERRORRES, 1000);

    -- Temp
    mob:AnimationSub(0); -- reset
    mob:delStatusEffect(EFFECT_ALL_MISS);

    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9648,0,8919,50); -- Ifritear
        SetDropRate(9648,0,8920,0); -- Leviatear
        SetDropRate(9648,0,8921,0); -- Ramutear
        SetDropRate(9648,0,8922,0); -- Garutear
        SetDropRate(9648,0,8923,0); -- Titatear
        SetDropRate(9648,0,8924,0); -- Shivatear
        SetDropRate(9648,0,8925,0); -- Carbutear
        SetDropRate(9648,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9648,0,8919,0); -- Ifritear
        SetDropRate(9648,0,8920,50); -- Leviatear
        SetDropRate(9648,0,8921,0); -- Ramutear
        SetDropRate(9648,0,8922,0); -- Garutear
        SetDropRate(9648,0,8923,0); -- Titatear
        SetDropRate(9648,0,8924,0); -- Shivatear
        SetDropRate(9648,0,8925,0); -- Carbutear
        SetDropRate(9648,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9648,0,8919,0); -- Ifritear
        SetDropRate(9648,0,8920,0); -- Leviatear
        SetDropRate(9648,0,8921,50); -- Ramutear
        SetDropRate(9648,0,8922,0); -- Garutear
        SetDropRate(9648,0,8923,0); -- Titatear
        SetDropRate(9648,0,8924,0); -- Shivatear
        SetDropRate(9648,0,8925,0); -- Carbutear
        SetDropRate(9648,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9648,0,8919,0); -- Ifritear
        SetDropRate(9648,0,8920,0); -- Leviatear
        SetDropRate(9648,0,8921,0); -- Ramutear
        SetDropRate(9648,0,8922,50); -- Garutear
        SetDropRate(9648,0,8923,0); -- Titatear
        SetDropRate(9648,0,8924,0); -- Shivatear
        SetDropRate(9648,0,8925,0); -- Carbutear
        SetDropRate(9648,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9648,0,8919,0); -- Ifritear
        SetDropRate(9648,0,8920,0); -- Leviatear
        SetDropRate(9648,0,8921,0); -- Ramutear
        SetDropRate(9648,0,8922,0); -- Garutear
        SetDropRate(9648,0,8923,50); -- Titatear
        SetDropRate(9648,0,8924,0); -- Shivatear
        SetDropRate(9648,0,8925,0); -- Carbutear
        SetDropRate(9648,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9648,0,8919,0); -- Ifritear
        SetDropRate(9648,0,8920,0); -- Leviatear
        SetDropRate(9648,0,8921,0); -- Ramutear
        SetDropRate(9648,0,8922,0); -- Garutear
        SetDropRate(9648,0,8923,0); -- Titatear
        SetDropRate(9648,0,8924,50); -- Shivatear
        SetDropRate(9648,0,8925,0); -- Carbutear
        SetDropRate(9648,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9648,0,8919,0); -- Ifritear
        SetDropRate(9648,0,8920,0); -- Leviatear
        SetDropRate(9648,0,8921,0); -- Ramutear
        SetDropRate(9648,0,8922,0); -- Garutear
        SetDropRate(9648,0,8923,0); -- Titatear
        SetDropRate(9648,0,8924,0); -- Shivatear
        SetDropRate(9648,0,8925,50); -- Carbutear
        SetDropRate(9648,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9648,0,8919,0); -- Ifritear
        SetDropRate(9648,0,8920,0); -- Leviatear
        SetDropRate(9648,0,8921,0); -- Ramutear
        SetDropRate(9648,0,8922,0); -- Garutear
        SetDropRate(9648,0,8923,0); -- Titatear
        SetDropRate(9648,0,8924,0); -- Shivatear
        SetDropRate(9648,0,8925,0); -- Carbutear
        SetDropRate(9648,0,8926,50); -- Fenritear
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
    local popTime = mob:getLocalVar("nextPetPop");
    local helperOne = GetMobAction(mob:getID()+1);
    local helperTwo = GetMobAction(mob:getID()+2);

    -- Pop an add after 4 minutes..
    if (os.time() > popTime) then
        if (helperOne == ACTION_NONE) then
            SpawnMob(helperOne):updateEnmity(target);
            helperOne:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
            mob:setLocalVar("nextPetPop", os.time()+360);
        elseif (helperTwo == ACTION_NONE) then
            SpawnMob(helperTwo):updateEnmity(target);
            helperTwo:setPos(mob:getXpos(), mob:getYPos(), mob:getYPos());
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
            mob:SetMobSkillAttack(true);
        end
    else
        -- We are flying, see if we should land..
        if (animSub == 1 and helperOne == ACTION_NONE and helperTwo == ACTION_NONE) then
            mob:useMobAbility(1026); -- touchdown
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

    if (player:hasKeyItem(ASHEN_STRATUM_ABYSSITE)) then -- Ildebran Kill
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
    end;
end;
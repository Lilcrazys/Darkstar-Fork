-----------------------------------
-- Area: ?
-- VWNM:
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/keyitems");
require("scripts/globals/quests");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,2250);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9652,0,8919,50); -- Ifritear
        SetDropRate(9652,0,8920,0); -- Leviatear    
        SetDropRate(9652,0,8921,0); -- Ramutear    
        SetDropRate(9652,0,8922,0); -- Garutear    
        SetDropRate(9652,0,8923,0); -- Titatear    
        SetDropRate(9652,0,8924,0); -- Shivatear   
        SetDropRate(9652,0,8925,0); -- Carbutear
        SetDropRate(9652,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9652,0,8919,0); -- Ifritear
        SetDropRate(9652,0,8920,50); -- Leviatear    
        SetDropRate(9652,0,8921,0); -- Ramutear    
        SetDropRate(9652,0,8922,0); -- Garutear    
        SetDropRate(9652,0,8923,0); -- Titatear    
        SetDropRate(9652,0,8924,0); -- Shivatear   
        SetDropRate(9652,0,8925,0); -- Carbutear
        SetDropRate(9652,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9652,0,8919,0); -- Ifritear
        SetDropRate(9652,0,8920,0); -- Leviatear    
        SetDropRate(9652,0,8921,50); -- Ramutear    
        SetDropRate(9652,0,8922,0); -- Garutear    
        SetDropRate(9652,0,8923,0); -- Titatear    
        SetDropRate(9652,0,8924,0); -- Shivatear   
        SetDropRate(9652,0,8925,0); -- Carbutear
        SetDropRate(9652,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9652,0,8919,0); -- Ifritear
        SetDropRate(9652,0,8920,0); -- Leviatear    
        SetDropRate(9652,0,8921,0); -- Ramutear    
        SetDropRate(9652,0,8922,50); -- Garutear    
        SetDropRate(9652,0,8923,0); -- Titatear    
        SetDropRate(9652,0,8924,0); -- Shivatear   
        SetDropRate(9652,0,8925,0); -- Carbutear
        SetDropRate(9652,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9652,0,8919,0); -- Ifritear
        SetDropRate(9652,0,8920,0); -- Leviatear    
        SetDropRate(9652,0,8921,0); -- Ramutear    
        SetDropRate(9652,0,8922,0); -- Garutear    
        SetDropRate(9652,0,8923,50); -- Titatear    
        SetDropRate(9652,0,8924,0); -- Shivatear   
        SetDropRate(9652,0,8925,0); -- Carbutear
        SetDropRate(9652,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9652,0,8919,0); -- Ifritear
        SetDropRate(9652,0,8920,0); -- Leviatear    
        SetDropRate(9652,0,8921,0); -- Ramutear    
        SetDropRate(9652,0,8922,0); -- Garutear    
        SetDropRate(9652,0,8923,0); -- Titatear    
        SetDropRate(9652,0,8924,50); -- Shivatear   
        SetDropRate(9652,0,8925,0); -- Carbutear
        SetDropRate(9652,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9652,0,8919,0); -- Ifritear
        SetDropRate(9652,0,8920,0); -- Leviatear    
        SetDropRate(9652,0,8921,0); -- Ramutear    
        SetDropRate(9652,0,8922,0); -- Garutear    
        SetDropRate(9652,0,8923,0); -- Titatear    
        SetDropRate(9652,0,8924,0); -- Shivatear   
        SetDropRate(9652,0,8925,50); -- Carbutear
        SetDropRate(9652,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9652,0,8919,0); -- Ifritear
        SetDropRate(9652,0,8920,0); -- Leviatear    
        SetDropRate(9652,0,8921,0); -- Ramutear    
        SetDropRate(9652,0,8922,0); -- Garutear    
        SetDropRate(9652,0,8923,0); -- Titatear    
        SetDropRate(9652,0,8924,0); -- Shivatear   
        SetDropRate(9652,0,8925,0); -- Carbutear
        SetDropRate(9652,0,8926,50); -- Fenritear       
    end    
    
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(50,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,30);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local popTimerDelay = 90; -- For easy adjustment.
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
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 650);
    ally:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);

    if (ally:hasKeyItem(ASHEN_STRATUM_ABYSSITE_II)) then -- Cath Palug Kill
        if (ally:getMaskBit(ally:getVar("ASHEN_STRATUM_II"), 0) == false) then
            ally:setMaskBit(ally:getVar("ASHEN_STRATUM_II"),"ASHEN_STRATUM_II",0,true);
        end

        if (player:getQuestStatus(OUTLANDS, VOIDWATCH_OPS_BORDER_CROSSING) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("ASHEN_STRATUM_II"),3) == true) then
                ally:addKeyItem(ASHEN_STRATUM_ABYSSITE_III);
                ally:delKeyItem(ASHEN_STRATUM_ABYSSITE_II);
                ally:setVar("ASHEN_STRATUM_II", 0);
            end
        end
    end   
end;
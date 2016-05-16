-----------------------------------
-- Area: ?
-- VWNM:
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
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,25);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,90);
    mob:setMod(MOD_DOUBLE_ATTACK,25);
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9656,0,8919,50); -- Ifritear
        SetDropRate(9656,0,8920,0); -- Leviatear    
        SetDropRate(9656,0,8921,0); -- Ramutear    
        SetDropRate(9656,0,8922,0); -- Garutear    
        SetDropRate(9656,0,8923,0); -- Titatear    
        SetDropRate(9656,0,8924,0); -- Shivatear   
        SetDropRate(9656,0,8925,0); -- Carbutear
        SetDropRate(9656,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9656,0,8919,0); -- Ifritear
        SetDropRate(9656,0,8920,50); -- Leviatear    
        SetDropRate(9656,0,8921,0); -- Ramutear    
        SetDropRate(9656,0,8922,0); -- Garutear    
        SetDropRate(9656,0,8923,0); -- Titatear    
        SetDropRate(9656,0,8924,0); -- Shivatear   
        SetDropRate(9656,0,8925,0); -- Carbutear
        SetDropRate(9656,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9656,0,8919,0); -- Ifritear
        SetDropRate(9656,0,8920,0); -- Leviatear    
        SetDropRate(9656,0,8921,50); -- Ramutear    
        SetDropRate(9656,0,8922,0); -- Garutear    
        SetDropRate(9656,0,8923,0); -- Titatear    
        SetDropRate(9656,0,8924,0); -- Shivatear   
        SetDropRate(9656,0,8925,0); -- Carbutear
        SetDropRate(9656,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9656,0,8919,0); -- Ifritear
        SetDropRate(9656,0,8920,0); -- Leviatear    
        SetDropRate(9656,0,8921,0); -- Ramutear    
        SetDropRate(9656,0,8922,50); -- Garutear    
        SetDropRate(9656,0,8923,0); -- Titatear    
        SetDropRate(9656,0,8924,0); -- Shivatear   
        SetDropRate(9656,0,8925,0); -- Carbutear
        SetDropRate(9656,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9656,0,8919,0); -- Ifritear
        SetDropRate(9656,0,8920,0); -- Leviatear    
        SetDropRate(9656,0,8921,0); -- Ramutear    
        SetDropRate(9656,0,8922,0); -- Garutear    
        SetDropRate(9656,0,8923,50); -- Titatear    
        SetDropRate(9656,0,8924,0); -- Shivatear   
        SetDropRate(9656,0,8925,0); -- Carbutear
        SetDropRate(9656,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9656,0,8919,0); -- Ifritear
        SetDropRate(9656,0,8920,0); -- Leviatear    
        SetDropRate(9656,0,8921,0); -- Ramutear    
        SetDropRate(9656,0,8922,0); -- Garutear    
        SetDropRate(9656,0,8923,0); -- Titatear    
        SetDropRate(9656,0,8924,50); -- Shivatear   
        SetDropRate(9656,0,8925,0); -- Carbutear
        SetDropRate(9656,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9656,0,8919,0); -- Ifritear
        SetDropRate(9656,0,8920,0); -- Leviatear    
        SetDropRate(9656,0,8921,0); -- Ramutear    
        SetDropRate(9656,0,8922,0); -- Garutear    
        SetDropRate(9656,0,8923,0); -- Titatear    
        SetDropRate(9656,0,8924,0); -- Shivatear   
        SetDropRate(9656,0,8925,50); -- Carbutear
        SetDropRate(9656,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9656,0,8919,0); -- Ifritear
        SetDropRate(9656,0,8920,0); -- Leviatear    
        SetDropRate(9656,0,8921,0); -- Ramutear    
        SetDropRate(9656,0,8922,0); -- Garutear    
        SetDropRate(9656,0,8923,0); -- Titatear    
        SetDropRate(9656,0,8924,0); -- Shivatear   
        SetDropRate(9656,0,8925,0); -- Carbutear
        SetDropRate(9656,0,8926,50); -- Fenritear       
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
    local XuanWu = mob:getLocalVar("XuanWu");
    local QingLong = mob:getLocalVar("QingLong");
    local BaiHu = mob:getLocalVar("BaiHu");
    local ZhuQue = mob:getLocalVar("ZhuQue");

    if (mob:getHPP() < 90) then
        if (XuanWu == 0) then
            SpawnMob(17506685):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("XuanWu", 1);
        end
    elseif (mob:getHPP() < 70) then
        if (QingLong == 0) then
            SpawnMob(17506683):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("QingLong", 1);
        end
    elseif (mob:getHPP() < 50) then
        if (BaiHu == 0) then
            SpawnMob(17506682):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("BaiHu", 1);
        end
    elseif (mob:getHPP() < 30) then
        if (ZhuQue == 0) then
            SpawnMob(17506684):updateEnmity(target);
            mob:setPos(mob:getXPos(), mob:getYPos(), mob:getZPos());
            mob:setLocalVar("ZhuQue", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("bayld", 750);
    player:addExp(10000);
    DespawnMob(mob:getID()+1);
    DespawnMob(mob:getID()+2);
    DespawnMob(mob:getID()+3);
    DespawnMob(mob:getID()+4);

    if (player:hasKeyItem(ASHEN_STRATUM_ABYSSITE_III)) then -- Qilin Kill
        if (player:getMaskBit(player:getVar("ZILART_VW"), 1) == false) then
            player:setMaskBit(player:getVar("ZILART_VW"),"ZILART_VW",1,true);
        end

        if (player:isMaskFull(player:getVar("ZILART_VW"),3) == true) then
            player:completeQuest(OUTLANDS, SKYWARD_HO_VOIDWATCHER);
            player:addKeyItem(ASHEN_STRATUM_ABYSSITE); -- Cycle back to T1, add questCompleted check here later.
            player:delKeyItem(ASHEN_STRATUM_ABYSSITE_III);
        end
    end;    
end;
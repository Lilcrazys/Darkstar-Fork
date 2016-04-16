-----------------------------------
-- Area: Dangruf Wadi
-- VWNM: Celano
-- @pos ? ? ? ?
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,250);

    -- Other
    mob:SetMobSkillAttack(true); -- Enable Special Animation for melee attacks.
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
    mob:setMod(MOD_MATT,125);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t));
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9615,0,8919,50); -- Ifritear
        SetDropRate(9615,0,8920,0); -- Leviatear    
        SetDropRate(9615,0,8921,0); -- Ramutear    
        SetDropRate(9615,0,8922,0); -- Garutear    
        SetDropRate(9615,0,8923,0); -- Titatear    
        SetDropRate(9615,0,8924,0); -- Shivatear   
        SetDropRate(9615,0,8925,0); -- Carbutear
        SetDropRate(9615,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9615,0,8919,0); -- Ifritear
        SetDropRate(9615,0,8920,50); -- Leviatear    
        SetDropRate(9615,0,8921,0); -- Ramutear    
        SetDropRate(9615,0,8922,0); -- Garutear    
        SetDropRate(9615,0,8923,0); -- Titatear    
        SetDropRate(9615,0,8924,0); -- Shivatear   
        SetDropRate(9615,0,8925,0); -- Carbutear
        SetDropRate(9615,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9615,0,8919,0); -- Ifritear
        SetDropRate(9615,0,8920,0); -- Leviatear    
        SetDropRate(9615,0,8921,50); -- Ramutear    
        SetDropRate(9615,0,8922,0); -- Garutear    
        SetDropRate(9615,0,8923,0); -- Titatear    
        SetDropRate(9615,0,8924,0); -- Shivatear   
        SetDropRate(9615,0,8925,0); -- Carbutear
        SetDropRate(9615,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9615,0,8919,0); -- Ifritear
        SetDropRate(9615,0,8920,0); -- Leviatear    
        SetDropRate(9615,0,8921,0); -- Ramutear    
        SetDropRate(9615,0,8922,50); -- Garutear    
        SetDropRate(9615,0,8923,0); -- Titatear    
        SetDropRate(9615,0,8924,0); -- Shivatear   
        SetDropRate(9615,0,8925,0); -- Carbutear
        SetDropRate(9615,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9615,0,8919,0); -- Ifritear
        SetDropRate(9615,0,8920,0); -- Leviatear    
        SetDropRate(9615,0,8921,0); -- Ramutear    
        SetDropRate(9615,0,8922,0); -- Garutear    
        SetDropRate(9615,0,8923,50); -- Titatear    
        SetDropRate(9615,0,8924,0); -- Shivatear   
        SetDropRate(9615,0,8925,0); -- Carbutear
        SetDropRate(9615,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9615,0,8919,0); -- Ifritear
        SetDropRate(9615,0,8920,0); -- Leviatear    
        SetDropRate(9615,0,8921,0); -- Ramutear    
        SetDropRate(9615,0,8922,0); -- Garutear    
        SetDropRate(9615,0,8923,0); -- Titatear    
        SetDropRate(9615,0,8924,50); -- Shivatear   
        SetDropRate(9615,0,8925,0); -- Carbutear
        SetDropRate(9615,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9615,0,8919,0); -- Ifritear
        SetDropRate(9615,0,8920,0); -- Leviatear    
        SetDropRate(9615,0,8921,0); -- Ramutear    
        SetDropRate(9615,0,8922,0); -- Garutear    
        SetDropRate(9615,0,8923,0); -- Titatear    
        SetDropRate(9615,0,8924,0); -- Shivatear   
        SetDropRate(9615,0,8925,50); -- Carbutear
        SetDropRate(9615,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9615,0,8919,0); -- Ifritear
        SetDropRate(9615,0,8920,0); -- Leviatear    
        SetDropRate(9615,0,8921,0); -- Ramutear    
        SetDropRate(9615,0,8922,0); -- Garutear    
        SetDropRate(9615,0,8923,0); -- Titatear    
        SetDropRate(9615,0,8924,0); -- Shivatear   
        SetDropRate(9615,0,8925,0); -- Carbutear
        SetDropRate(9615,0,8926,50); -- Fenritear       
    end
    
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Used2hr = mob:getLocalVar("Used2hr");

    if (mob:getHPP() <= 15) then
        if (Used2hr == 2) then
            mob:useMobAbility(436); -- ChainSpell
            mob:setLocalVar("Used2hr", 3);
        end
    elseif (mob:getHPP() <= 40) then
        if (Used2hr == 1) then
            mob:useMobAbility(436); -- ChainSpell
            mob:setLocalVar("Used2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Used2hr == 0) then
            mob:useMobAbility(433); -- Benediction
            mob:setLocalVar("Used2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE_IV)) then
        if (ally:getQuestStatus(CRYSTAL_WAR, GUARDIAN_OF_THE_VOID) == QUEST_AVAILABLE) then
            if (ally:getMaskBit(ally:getVar("VW_3_NATIONS"), 1) == false) then
                ally:setMaskBit(ally:getVar("VW_3_NATIONS"),"VW_3_NATIONS",1,true);
            end
        end

        ally:addKeyItem(INDIGO_STRATUM_ABYSSITE);
        ally:delKeyItem(INDIGO_STRATUM_ABYSSITE_IV);
        ally:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE);
    end

    ally:addCurrency("bayld", 125);
    ally:addExp(10000);
end;
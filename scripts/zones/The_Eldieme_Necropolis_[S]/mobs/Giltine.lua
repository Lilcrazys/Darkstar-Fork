-----------------------------------
-- Area: ?
-- VWNM: Gilitine
-----------------------------------
package.loaded["scripts/zones/The_Eldieme_Necropolis_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/The_Eldieme_Necropolis_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,120);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC,2200);
    mob:setMod(MOD_MATT,65);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9631,0,8919,50); -- Ifritear
        SetDropRate(9631,0,8920,0); -- Leviatear    
        SetDropRate(9631,0,8921,0); -- Ramutear    
        SetDropRate(9631,0,8922,0); -- Garutear    
        SetDropRate(9631,0,8923,0); -- Titatear    
        SetDropRate(9631,0,8924,0); -- Shivatear   
        SetDropRate(9631,0,8925,0); -- Carbutear
        SetDropRate(9631,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9631,0,8919,0); -- Ifritear
        SetDropRate(9631,0,8920,50); -- Leviatear    
        SetDropRate(9631,0,8921,0); -- Ramutear    
        SetDropRate(9631,0,8922,0); -- Garutear    
        SetDropRate(9631,0,8923,0); -- Titatear    
        SetDropRate(9631,0,8924,0); -- Shivatear   
        SetDropRate(9631,0,8925,0); -- Carbutear
        SetDropRate(9631,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9631,0,8919,0); -- Ifritear
        SetDropRate(9631,0,8920,0); -- Leviatear    
        SetDropRate(9631,0,8921,50); -- Ramutear    
        SetDropRate(9631,0,8922,0); -- Garutear    
        SetDropRate(9631,0,8923,0); -- Titatear    
        SetDropRate(9631,0,8924,0); -- Shivatear   
        SetDropRate(9631,0,8925,0); -- Carbutear
        SetDropRate(9631,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9631,0,8919,0); -- Ifritear
        SetDropRate(9631,0,8920,0); -- Leviatear    
        SetDropRate(9631,0,8921,0); -- Ramutear    
        SetDropRate(9631,0,8922,50); -- Garutear    
        SetDropRate(9631,0,8923,0); -- Titatear    
        SetDropRate(9631,0,8924,0); -- Shivatear   
        SetDropRate(9631,0,8925,0); -- Carbutear
        SetDropRate(9631,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9631,0,8919,0); -- Ifritear
        SetDropRate(9631,0,8920,0); -- Leviatear    
        SetDropRate(9631,0,8921,0); -- Ramutear    
        SetDropRate(9631,0,8922,0); -- Garutear    
        SetDropRate(9631,0,8923,50); -- Titatear    
        SetDropRate(9631,0,8924,0); -- Shivatear   
        SetDropRate(9631,0,8925,0); -- Carbutear
        SetDropRate(9631,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9631,0,8919,0); -- Ifritear
        SetDropRate(9631,0,8920,0); -- Leviatear    
        SetDropRate(9631,0,8921,0); -- Ramutear    
        SetDropRate(9631,0,8922,0); -- Garutear    
        SetDropRate(9631,0,8923,0); -- Titatear    
        SetDropRate(9631,0,8924,50); -- Shivatear   
        SetDropRate(9631,0,8925,0); -- Carbutear
        SetDropRate(9631,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9631,0,8919,0); -- Ifritear
        SetDropRate(9631,0,8920,0); -- Leviatear    
        SetDropRate(9631,0,8921,0); -- Ramutear    
        SetDropRate(9631,0,8922,0); -- Garutear    
        SetDropRate(9631,0,8923,0); -- Titatear    
        SetDropRate(9631,0,8924,0); -- Shivatear   
        SetDropRate(9631,0,8925,50); -- Carbutear
        SetDropRate(9631,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9631,0,8919,0); -- Ifritear
        SetDropRate(9631,0,8920,0); -- Leviatear    
        SetDropRate(9631,0,8921,0); -- Ramutear    
        SetDropRate(9631,0,8922,0); -- Garutear    
        SetDropRate(9631,0,8923,0); -- Titatear    
        SetDropRate(9631,0,8924,0); -- Shivatear   
        SetDropRate(9631,0,8925,0); -- Carbutear
        SetDropRate(9631,0,8926,50); -- Fenritear       
    end    
    
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
            mob:setMod(MOD_REGAIN, 40);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(50,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,15);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 200);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Gilitine Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_II"), 5) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",5,true);
        end

        if (player:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_II"),6) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                ally:setVar("WHITE_STRATUM_II", 0);
                ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_III);
            end
        end
    end    
end;
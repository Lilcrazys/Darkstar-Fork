-----------------------------------
-- Area: EDIT ME
-- VWNM: Laidly Laurence
-----------------------------------
package.loaded["scripts/zones/Garlaige_Citadel_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Garlaige_Citadel_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_ACC,1950);

    -- var
    mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
    if (os.time(t) > mob:getLocalVar("depopTime")) then
       DespawnMob(mob:getID());
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 200);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Laidly Laurence Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_II"), 1) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",1,true);
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
    
    local RND1 = math.random(1,8);
        if (RND1 == 1) then
            SetDropRate(9627,0,8919,50); -- Ifritear
            SetDropRate(9627,0,8920,0); -- Leviatear    
            SetDropRate(9627,0,8921,0); -- Ramutear    
            SetDropRate(9627,0,8922,0); -- Garutear    
            SetDropRate(9627,0,8923,0); -- Titatear    
            SetDropRate(9627,0,8924,0); -- Shivatear   
            SetDropRate(9627,0,8925,0); -- Carbutear
            SetDropRate(9627,0,8926,0); -- Fenritear
        elseif (RND1 == 2) then
            SetDropRate(9627,0,8919,0); -- Ifritear
            SetDropRate(9627,0,8920,50); -- Leviatear    
            SetDropRate(9627,0,8921,0); -- Ramutear    
            SetDropRate(9627,0,8922,0); -- Garutear    
            SetDropRate(9627,0,8923,0); -- Titatear    
            SetDropRate(9627,0,8924,0); -- Shivatear   
            SetDropRate(9627,0,8925,0); -- Carbutear
            SetDropRate(9627,0,8926,0); -- Fenritear
        elseif (RND1 == 3) then
            SetDropRate(9627,0,8919,0); -- Ifritear
            SetDropRate(9627,0,8920,0); -- Leviatear    
            SetDropRate(9627,0,8921,50); -- Ramutear    
            SetDropRate(9627,0,8922,0); -- Garutear    
            SetDropRate(9627,0,8923,0); -- Titatear    
            SetDropRate(9627,0,8924,0); -- Shivatear   
            SetDropRate(9627,0,8925,0); -- Carbutear
            SetDropRate(9627,0,8926,0); -- Fenritear
        elseif (RND1 == 4) then
            SetDropRate(9627,0,8919,0); -- Ifritear
            SetDropRate(9627,0,8920,0); -- Leviatear    
            SetDropRate(9627,0,8921,0); -- Ramutear    
            SetDropRate(9627,0,8922,50); -- Garutear    
            SetDropRate(9627,0,8923,0); -- Titatear    
            SetDropRate(9627,0,8924,0); -- Shivatear   
            SetDropRate(9627,0,8925,0); -- Carbutear
            SetDropRate(9627,0,8926,0); -- Fenritear
        elseif (RND1 == 5) then
            SetDropRate(9627,0,8919,0); -- Ifritear
            SetDropRate(9627,0,8920,0); -- Leviatear    
            SetDropRate(9627,0,8921,0); -- Ramutear    
            SetDropRate(9627,0,8922,0); -- Garutear    
            SetDropRate(9627,0,8923,50); -- Titatear    
            SetDropRate(9627,0,8924,0); -- Shivatear   
            SetDropRate(9627,0,8925,0); -- Carbutear
            SetDropRate(9627,0,8926,0); -- Fenritear
        elseif (RND1 == 6) then
            SetDropRate(9627,0,8919,0); -- Ifritear
            SetDropRate(9627,0,8920,0); -- Leviatear    
            SetDropRate(9627,0,8921,0); -- Ramutear    
            SetDropRate(9627,0,8922,0); -- Garutear    
            SetDropRate(9627,0,8923,0); -- Titatear    
            SetDropRate(9627,0,8924,50); -- Shivatear   
            SetDropRate(9627,0,8925,0); -- Carbutear
            SetDropRate(9627,0,8926,0); -- Fenritear
        elseif (RND1 == 7) then
            SetDropRate(9627,0,8919,0); -- Ifritear
            SetDropRate(9627,0,8920,0); -- Leviatear    
            SetDropRate(9627,0,8921,0); -- Ramutear    
            SetDropRate(9627,0,8922,0); -- Garutear    
            SetDropRate(9627,0,8923,0); -- Titatear    
            SetDropRate(9627,0,8924,0); -- Shivatear   
            SetDropRate(9627,0,8925,50); -- Carbutear
            SetDropRate(9627,0,8926,0); -- Fenritear
        elseif (RND1 == 8) then
            SetDropRate(9627,0,8919,0); -- Ifritear
            SetDropRate(9627,0,8920,0); -- Leviatear    
            SetDropRate(9627,0,8921,0); -- Ramutear    
            SetDropRate(9627,0,8922,0); -- Garutear    
            SetDropRate(9627,0,8923,0); -- Titatear    
            SetDropRate(9627,0,8924,0); -- Shivatear   
            SetDropRate(9627,0,8925,0); -- Carbutear
            SetDropRate(9627,0,8926,50); -- Fenritear       
    end
    
end;
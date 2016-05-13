-----------------------------------
-- Area: ?
-- VWNM: Gasha 3
-----------------------------------
package.loaded["scripts/zones/The_Eldieme_Necropolis/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/The_Eldieme_Necropolis/TextIDs");
require("scripts/globals/keyitems");
require("scripts/globals/quests");
require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 30);
    mob:setMod(MOD_HASTE_ABILITY, 25);
    mob:setMod(MOD_MACC,1950); -- needs to be corrected amount of addMod instead..
    mob:setMod(MOD_MATT,105);  -- needs to be corrected amount of addMod instead..

    -- addMod
    mob:addMod(MOD_MDEF,60);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9630,0,8919,50); -- Ifritear
        SetDropRate(9630,0,8920,0); -- Leviatear    
        SetDropRate(9630,0,8921,0); -- Ramutear    
        SetDropRate(9630,0,8922,0); -- Garutear    
        SetDropRate(9630,0,8923,0); -- Titatear    
        SetDropRate(9630,0,8924,0); -- Shivatear   
        SetDropRate(9630,0,8925,0); -- Carbutear
        SetDropRate(9630,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9630,0,8919,0); -- Ifritear
        SetDropRate(9630,0,8920,50); -- Leviatear    
        SetDropRate(9630,0,8921,0); -- Ramutear    
        SetDropRate(9630,0,8922,0); -- Garutear    
        SetDropRate(9630,0,8923,0); -- Titatear    
        SetDropRate(9630,0,8924,0); -- Shivatear   
        SetDropRate(9630,0,8925,0); -- Carbutear
        SetDropRate(9630,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9630,0,8919,0); -- Ifritear
        SetDropRate(9630,0,8920,0); -- Leviatear    
        SetDropRate(9630,0,8921,50); -- Ramutear    
        SetDropRate(9630,0,8922,0); -- Garutear    
        SetDropRate(9630,0,8923,0); -- Titatear    
        SetDropRate(9630,0,8924,0); -- Shivatear   
        SetDropRate(9630,0,8925,0); -- Carbutear
        SetDropRate(9630,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9630,0,8919,0); -- Ifritear
        SetDropRate(9630,0,8920,0); -- Leviatear    
        SetDropRate(9630,0,8921,0); -- Ramutear    
        SetDropRate(9630,0,8922,50); -- Garutear    
        SetDropRate(9630,0,8923,0); -- Titatear    
        SetDropRate(9630,0,8924,0); -- Shivatear   
        SetDropRate(9630,0,8925,0); -- Carbutear
        SetDropRate(9630,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9630,0,8919,0); -- Ifritear
        SetDropRate(9630,0,8920,0); -- Leviatear    
        SetDropRate(9630,0,8921,0); -- Ramutear    
        SetDropRate(9630,0,8922,0); -- Garutear    
        SetDropRate(9630,0,8923,50); -- Titatear    
        SetDropRate(9630,0,8924,0); -- Shivatear   
        SetDropRate(9630,0,8925,0); -- Carbutear
        SetDropRate(9630,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9630,0,8919,0); -- Ifritear
        SetDropRate(9630,0,8920,0); -- Leviatear    
        SetDropRate(9630,0,8921,0); -- Ramutear    
        SetDropRate(9630,0,8922,0); -- Garutear    
        SetDropRate(9630,0,8923,0); -- Titatear    
        SetDropRate(9630,0,8924,50); -- Shivatear   
        SetDropRate(9630,0,8925,0); -- Carbutear
        SetDropRate(9630,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9630,0,8919,0); -- Ifritear
        SetDropRate(9630,0,8920,0); -- Leviatear    
        SetDropRate(9630,0,8921,0); -- Ramutear    
        SetDropRate(9630,0,8922,0); -- Garutear    
        SetDropRate(9630,0,8923,0); -- Titatear    
        SetDropRate(9630,0,8924,0); -- Shivatear   
        SetDropRate(9630,0,8925,50); -- Carbutear
        SetDropRate(9630,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9630,0,8919,0); -- Ifritear
        SetDropRate(9630,0,8920,0); -- Leviatear    
        SetDropRate(9630,0,8921,0); -- Ramutear    
        SetDropRate(9630,0,8922,0); -- Garutear    
        SetDropRate(9630,0,8923,0); -- Titatear    
        SetDropRate(9630,0,8924,0); -- Shivatear   
        SetDropRate(9630,0,8925,0); -- Carbutear
        SetDropRate(9630,0,8926,50); -- Fenritear       
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
    local Gasha_2hr_Used = mob:getLocalVar("Gasha_2hr");


    if (mob:getHPP() <= 40) then
        if (Gasha_2hr_Used == 0) then
            mob:useMobAbility(474); -- SAM
            mob:setLocalVar("Gasha_2hr", 1);
        end
    end
end;

-----------------------------------
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if (math.random(1,10) > 4 or target:hasStatusEffect(EFFECT_PARALYSIS) == true) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_PARALYSIS,1,0,10);
    end

    return SUBEFFECT_PARALYSIS,MSGBASIC_ADD_EFFECT_STATUS,EFFECT_PARALYSIS;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_II)) then -- Gasha Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_II"), 4) == false) then
            ally:setMaskBit(ally:getVar("WHITE_STRATUM_II"),"WHITE_STRATUM_II",4,true);
        end

        if (ally:getQuestStatus(CRYSTAL_WAR, BATTLE_ON_A_NEW_FRONT) == QUEST_COMPLETED) then
            if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_II"),6) == true) then
                ally:addKeyItem(WHITE_STRATUM_ABYSSITE_III);
                ally:delKeyItem(WHITE_STRATUM_ABYSSITE_II);
                ally:setVar("WHITE_STRATUM_II", 0);
                ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_III);
            end
        end
    end

    ally:addCurrency("bayld", 200);
    ally:addExp(10000);
end;

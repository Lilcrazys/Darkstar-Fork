-----------------------------------
-- Area: EDIT ME
-- VWNM: Yatagarasu
-----------------------------------

package.loaded["scripts/zones/Rolanberry_Fields/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Rolanberry_Fields/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,250);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_TRIPLE_ATTACK,25);

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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) < 3) or (target:hasStatusEffect(EFFECT_BLINDNESS) == true)) then
        return 0,0,0;
    else
        local duration = 10;
        target:addStatusEffect(EFFECT_BLINDNESS,40,0,duration);
        return SUBEFFECT_CURSE,163,EFFECT_BLINDNESS;
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 100);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE)) then -- Yatagarasu Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM"), 2) == false) then
           ally:setMaskBit(ally:getVar("WHITE_STRATUM"),"WHITE_STRATUM",2,true);
        end
        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM"),6) == true) then
           ally:addKeyItem(WHITE_STRATUM_ABYSSITE_II);
           ally:delKeyItem(WHITE_STRATUM_ABYSSITE);
           ally:setVar("WHITE_STRATUM", 0);
           ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_II);
        end
    end;
    
    local RND1 = math.random(1,8);
        if (RND1 == 1) then
            SetDropRate(9622,0,8919,50); -- Ifritear
            SetDropRate(9622,0,8920,0); -- Leviatear    
            SetDropRate(9622,0,8921,0); -- Ramutear    
            SetDropRate(9622,0,8922,0); -- Garutear    
            SetDropRate(9622,0,8923,0); -- Titatear    
            SetDropRate(9622,0,8924,0); -- Shivatear   
            SetDropRate(9622,0,8925,0); -- Carbutear
            SetDropRate(9622,0,8926,0); -- Fenritear
        elseif (RND1 == 2) then
            SetDropRate(9622,0,8919,0); -- Ifritear
            SetDropRate(9622,0,8920,50); -- Leviatear    
            SetDropRate(9622,0,8921,0); -- Ramutear    
            SetDropRate(9622,0,8922,0); -- Garutear    
            SetDropRate(9622,0,8923,0); -- Titatear    
            SetDropRate(9622,0,8924,0); -- Shivatear   
            SetDropRate(9622,0,8925,0); -- Carbutear
            SetDropRate(9622,0,8926,0); -- Fenritear
        elseif (RND1 == 3) then
            SetDropRate(9622,0,8919,0); -- Ifritear
            SetDropRate(9622,0,8920,0); -- Leviatear    
            SetDropRate(9622,0,8921,50); -- Ramutear    
            SetDropRate(9622,0,8922,0); -- Garutear    
            SetDropRate(9622,0,8923,0); -- Titatear    
            SetDropRate(9622,0,8924,0); -- Shivatear   
            SetDropRate(9622,0,8925,0); -- Carbutear
            SetDropRate(9622,0,8926,0); -- Fenritear
        elseif (RND1 == 4) then
            SetDropRate(9622,0,8919,0); -- Ifritear
            SetDropRate(9622,0,8920,0); -- Leviatear    
            SetDropRate(9622,0,8921,0); -- Ramutear    
            SetDropRate(9622,0,8922,50); -- Garutear    
            SetDropRate(9622,0,8923,0); -- Titatear    
            SetDropRate(9622,0,8924,0); -- Shivatear   
            SetDropRate(9622,0,8925,0); -- Carbutear
            SetDropRate(9622,0,8926,0); -- Fenritear
        elseif (RND1 == 5) then
            SetDropRate(9622,0,8919,0); -- Ifritear
            SetDropRate(9622,0,8920,0); -- Leviatear    
            SetDropRate(9622,0,8921,0); -- Ramutear    
            SetDropRate(9622,0,8922,0); -- Garutear    
            SetDropRate(9622,0,8923,50); -- Titatear    
            SetDropRate(9622,0,8924,0); -- Shivatear   
            SetDropRate(9622,0,8925,0); -- Carbutear
            SetDropRate(9622,0,8926,0); -- Fenritear
        elseif (RND1 == 6) then
            SetDropRate(9622,0,8919,0); -- Ifritear
            SetDropRate(9622,0,8920,0); -- Leviatear    
            SetDropRate(9622,0,8921,0); -- Ramutear    
            SetDropRate(9622,0,8922,0); -- Garutear    
            SetDropRate(9622,0,8923,0); -- Titatear    
            SetDropRate(9622,0,8924,50); -- Shivatear   
            SetDropRate(9622,0,8925,0); -- Carbutear
            SetDropRate(9622,0,8926,0); -- Fenritear
        elseif (RND1 == 7) then
            SetDropRate(9622,0,8919,0); -- Ifritear
            SetDropRate(9622,0,8920,0); -- Leviatear    
            SetDropRate(9622,0,8921,0); -- Ramutear    
            SetDropRate(9622,0,8922,0); -- Garutear    
            SetDropRate(9622,0,8923,0); -- Titatear    
            SetDropRate(9622,0,8924,0); -- Shivatear   
            SetDropRate(9622,0,8925,50); -- Carbutear
            SetDropRate(9622,0,8926,0); -- Fenritear
        elseif (RND1 == 8) then
            SetDropRate(9622,0,8919,0); -- Ifritear
            SetDropRate(9622,0,8920,0); -- Leviatear    
            SetDropRate(9622,0,8921,0); -- Ramutear    
            SetDropRate(9622,0,8922,0); -- Garutear    
            SetDropRate(9622,0,8923,0); -- Titatear    
            SetDropRate(9622,0,8924,0); -- Shivatear   
            SetDropRate(9622,0,8925,0); -- Carbutear
            SetDropRate(9622,0,8926,50); -- Fenritear       
    end
    
end;
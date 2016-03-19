-----------------------------------
-- Area: ?
-- VWNM: Sarimanok
-----------------------------------
package.loaded["scripts/zones/East_Ronfaure/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/East_Ronfaure/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_ATT,100);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_TRIPLE_ATTACK,10);
    mob:setMod(MOD_DEF,1500);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9602,8919,50); -- Ifritear
        SetDropRate(9602,8920,0); -- Leviatear
        SetDropRate(9602,8921,0); -- Ramutear
        SetDropRate(9602,8922,0); -- Garutear
        SetDropRate(9602,8923,0); -- Titatear
        SetDropRate(9602,8924,0); -- Shivatear
        SetDropRate(9602,8925,0); -- Carbutear
        SetDropRate(9602,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9602,8919,0); -- Ifritear
        SetDropRate(9602,8920,50); -- Leviatear
        SetDropRate(9602,8921,0); -- Ramutear
        SetDropRate(9602,8922,0); -- Garutear
        SetDropRate(9602,8923,0); -- Titatear
        SetDropRate(9602,8924,0); -- Shivatear
        SetDropRate(9602,8925,0); -- Carbutear
        SetDropRate(9602,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9602,8919,0); -- Ifritear
        SetDropRate(9602,8920,0); -- Leviatear
        SetDropRate(9602,8921,50); -- Ramutear
        SetDropRate(9602,8922,0); -- Garutear
        SetDropRate(9602,8923,0); -- Titatear
        SetDropRate(9602,8924,0); -- Shivatear
        SetDropRate(9602,8925,0); -- Carbutear
        SetDropRate(9602,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9602,8919,0); -- Ifritear
        SetDropRate(9602,8920,0); -- Leviatear
        SetDropRate(9602,8921,0); -- Ramutear
        SetDropRate(9602,8922,50); -- Garutear
        SetDropRate(9602,8923,0); -- Titatear
        SetDropRate(9602,8924,0); -- Shivatear
        SetDropRate(9602,8925,0); -- Carbutear
        SetDropRate(9602,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9602,8919,0); -- Ifritear
        SetDropRate(9602,8920,0); -- Leviatear
        SetDropRate(9602,8921,0); -- Ramutear
        SetDropRate(9602,8922,0); -- Garutear
        SetDropRate(9602,8923,50); -- Titatear
        SetDropRate(9602,8924,0); -- Shivatear
        SetDropRate(9602,8925,0); -- Carbutear
        SetDropRate(9602,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9602,8919,0); -- Ifritear
        SetDropRate(9602,8920,0); -- Leviatear
        SetDropRate(9602,8921,0); -- Ramutear
        SetDropRate(9602,8922,0); -- Garutear
        SetDropRate(9602,8923,0); -- Titatear
        SetDropRate(9602,8924,50); -- Shivatear
        SetDropRate(9602,8925,0); -- Carbutear
        SetDropRate(9602,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9602,8919,0); -- Ifritear
        SetDropRate(9602,8920,0); -- Leviatear
        SetDropRate(9602,8921,0); -- Ramutear
        SetDropRate(9602,8922,0); -- Garutear
        SetDropRate(9602,8923,0); -- Titatear
        SetDropRate(9602,8924,0); -- Shivatear
        SetDropRate(9602,8925,50); -- Carbutear
        SetDropRate(9602,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9602,8919,0); -- Ifritear
        SetDropRate(9602,8920,0); -- Leviatear
        SetDropRate(9602,8921,0); -- Ramutear
        SetDropRate(9602,8922,0); -- Garutear
        SetDropRate(9602,8923,0); -- Titatear
        SetDropRate(9602,8924,0); -- Shivatear
        SetDropRate(9602,8925,0); -- Carbutear
        SetDropRate(9602,8926,50); -- Fenritear
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
    local Boost_Used = mob:getLocalVar("Boost");
    local depopTime = mob:getLocalVar("depopTime");


    if (mob:getHPP() <= 25) then
        if (Boost_Used == 1) then
            mob:setMod(MOD_TRIPLE_ATTACK,30);
            mob:setMod(MOD_UFASTCAST, 75);
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_TRIPLE_ATTACK,20);
            mob:setMod(MOD_UFASTCAST, 50);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(CRIMSON_STRATUM_ABYSSITE)) then -- Sarimanok Kill
        if (ally:getMaskBit(ally:getVar("CRIMSON_STRATUM"), 0) == false) then
            ally:setMaskBit(ally:getVar("CRIMSON_STRATUM"),"CRIMSON_STRATUM",0,true);
        end
        if (ally:isMaskFull(ally:getVar("CRIMSON_STRATUM"), 2) == true) then
            ally:addKeyItem(CRIMSON_STRATUM_ABYSSITE_II);
            ally:delKeyItem(CRIMSON_STRATUM_ABYSSITE);
            ally:setVar("CRIMSON_STRATUM", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE_II);
        end
    end
    ally:addExp(10000);    
end;
-----------------------------------
-- Area: ?
-- VWNM: Melancholic_Moira
-----------------------------------
package.loaded["scripts/zones/Pashhow_Marshlands_[S][/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Pashhow_Marshlands_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,150);
    mob:addMod(MOD_ATT,175);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_DOUBLE_ATTACK,15);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
   
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9610,8919,50); -- Ifritear
        SetDropRate(9610,8920,0); -- Leviatear
        SetDropRate(9610,8921,0); -- Ramutear
        SetDropRate(9610,8922,0); -- Garutear
        SetDropRate(9610,8923,0); -- Titatear
        SetDropRate(9610,8924,0); -- Shivatear
        SetDropRate(9610,8925,0); -- Carbutear
        SetDropRate(9610,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9610,8919,0); -- Ifritear
        SetDropRate(9610,8920,50); -- Leviatear
        SetDropRate(9610,8921,0); -- Ramutear
        SetDropRate(9610,8922,0); -- Garutear
        SetDropRate(9610,8923,0); -- Titatear
        SetDropRate(9610,8924,0); -- Shivatear
        SetDropRate(9610,8925,0); -- Carbutear
        SetDropRate(9610,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9610,8919,0); -- Ifritear
        SetDropRate(9610,8920,0); -- Leviatear
        SetDropRate(9610,8921,50); -- Ramutear
        SetDropRate(9610,8922,0); -- Garutear
        SetDropRate(9610,8923,0); -- Titatear
        SetDropRate(9610,8924,0); -- Shivatear
        SetDropRate(9610,8925,0); -- Carbutear
        SetDropRate(9610,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9610,8919,0); -- Ifritear
        SetDropRate(9610,8920,0); -- Leviatear
        SetDropRate(9610,8921,0); -- Ramutear
        SetDropRate(9610,8922,50); -- Garutear
        SetDropRate(9610,8923,0); -- Titatear
        SetDropRate(9610,8924,0); -- Shivatear
        SetDropRate(9610,8925,0); -- Carbutear
        SetDropRate(9610,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9610,8919,0); -- Ifritear
        SetDropRate(9610,8920,0); -- Leviatear
        SetDropRate(9610,8921,0); -- Ramutear
        SetDropRate(9610,8922,0); -- Garutear
        SetDropRate(9610,8923,50); -- Titatear
        SetDropRate(9610,8924,0); -- Shivatear
        SetDropRate(9610,8925,0); -- Carbutear
        SetDropRate(9610,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9610,8919,0); -- Ifritear
        SetDropRate(9610,8920,0); -- Leviatear
        SetDropRate(9610,8921,0); -- Ramutear
        SetDropRate(9610,8922,0); -- Garutear
        SetDropRate(9610,8923,0); -- Titatear
        SetDropRate(9610,8924,50); -- Shivatear
        SetDropRate(9610,8925,0); -- Carbutear
        SetDropRate(9610,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9610,8919,0); -- Ifritear
        SetDropRate(9610,8920,0); -- Leviatear
        SetDropRate(9610,8921,0); -- Ramutear
        SetDropRate(9610,8922,0); -- Garutear
        SetDropRate(9610,8923,0); -- Titatear
        SetDropRate(9610,8924,0); -- Shivatear
        SetDropRate(9610,8925,50); -- Carbutear
        SetDropRate(9610,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9610,8919,0); -- Ifritear
        SetDropRate(9610,8920,0); -- Leviatear
        SetDropRate(9610,8921,0); -- Ramutear
        SetDropRate(9610,8922,0); -- Garutear
        SetDropRate(9610,8923,0); -- Titatear
        SetDropRate(9610,8924,0); -- Shivatear
        SetDropRate(9610,8925,0); -- Carbutear
        SetDropRate(9610,8926,50); -- Fenritear
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
            mob:setMod(MOD_DOUBLE_ATTACK, 50);
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_DOUBLE_ATTACK,25);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(INDIGO_STRATUM_ABYSSITE_III)) then -- Melancholic Kill
        if (ally:getMaskBit(ally:getVar("INDIGO_STRATUM_III"), 1) == false) then
            ally:setMaskBit(ally:getVar("INDIGO_STRATUM_III"),"INDIGO_STRATUM_III",1,true);
        end

        if (ally:isMaskFull(ally:getVar("INDIGO_STRATUM_III"),2) == true) then
            ally:addKeyItem(INDIGO_STRATUM_ABYSSITE_IV);
            ally:delKeyItem(INDIGO_STRATUM_ABYSSITE_III);
            ally:setVar("INDIGO_STRATUM_III", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, INDIGO_STRATUM_ABYSSITE_IV);
        end
    end

    ally:addCurrency("bayld", 75);
    ally:addExp(10000);
end;
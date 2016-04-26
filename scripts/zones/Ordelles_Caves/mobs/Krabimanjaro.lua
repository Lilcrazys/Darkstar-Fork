-----------------------------------
-- Area: ?
-- VWNM: Krabimanjaro
-----------------------------------
package.loaded["scripts/zones/Ordelles_Caves/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Ordelles_Caves/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,125);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 35);
    mob:setMod(MOD_MACC,1900);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_TRIPLE_ATTACK,15);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9607,8919,50); -- Ifritear
        SetDropRate(9607,8920,0); -- Leviatear
        SetDropRate(9607,8921,0); -- Ramutear
        SetDropRate(9607,8922,0); -- Garutear
        SetDropRate(9607,8923,0); -- Titatear
        SetDropRate(9607,8924,0); -- Shivatear
        SetDropRate(9607,8925,0); -- Carbutear
        SetDropRate(9607,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9607,8919,0); -- Ifritear
        SetDropRate(9607,8920,50); -- Leviatear
        SetDropRate(9607,8921,0); -- Ramutear
        SetDropRate(9607,8922,0); -- Garutear
        SetDropRate(9607,8923,0); -- Titatear
        SetDropRate(9607,8924,0); -- Shivatear
        SetDropRate(9607,8925,0); -- Carbutear
        SetDropRate(9607,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9607,8919,0); -- Ifritear
        SetDropRate(9607,8920,0); -- Leviatear
        SetDropRate(9607,8921,50); -- Ramutear
        SetDropRate(9607,8922,0); -- Garutear
        SetDropRate(9607,8923,0); -- Titatear
        SetDropRate(9607,8924,0); -- Shivatear
        SetDropRate(9607,8925,0); -- Carbutear
        SetDropRate(9607,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9607,8919,0); -- Ifritear
        SetDropRate(9607,8920,0); -- Leviatear
        SetDropRate(9607,8921,0); -- Ramutear
        SetDropRate(9607,8922,50); -- Garutear
        SetDropRate(9607,8923,0); -- Titatear
        SetDropRate(9607,8924,0); -- Shivatear
        SetDropRate(9607,8925,0); -- Carbutear
        SetDropRate(9607,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9607,8919,0); -- Ifritear
        SetDropRate(9607,8920,0); -- Leviatear
        SetDropRate(9607,8921,0); -- Ramutear
        SetDropRate(9607,8922,0); -- Garutear
        SetDropRate(9607,8923,50); -- Titatear
        SetDropRate(9607,8924,0); -- Shivatear
        SetDropRate(9607,8925,0); -- Carbutear
        SetDropRate(9607,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9607,8919,0); -- Ifritear
        SetDropRate(9607,8920,0); -- Leviatear
        SetDropRate(9607,8921,0); -- Ramutear
        SetDropRate(9607,8922,0); -- Garutear
        SetDropRate(9607,8923,0); -- Titatear
        SetDropRate(9607,8924,50); -- Shivatear
        SetDropRate(9607,8925,0); -- Carbutear
        SetDropRate(9607,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9607,8919,0); -- Ifritear
        SetDropRate(9607,8920,0); -- Leviatear
        SetDropRate(9607,8921,0); -- Ramutear
        SetDropRate(9607,8922,0); -- Garutear
        SetDropRate(9607,8923,0); -- Titatear
        SetDropRate(9607,8924,0); -- Shivatear
        SetDropRate(9607,8925,50); -- Carbutear
        SetDropRate(9607,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9607,8919,0); -- Ifritear
        SetDropRate(9607,8920,0); -- Leviatear
        SetDropRate(9607,8921,0); -- Ramutear
        SetDropRate(9607,8922,0); -- Garutear
        SetDropRate(9607,8923,0); -- Titatear
        SetDropRate(9607,8924,0); -- Shivatear
        SetDropRate(9607,8925,0); -- Carbutear
        SetDropRate(9607,8926,50); -- Fenritear
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
    local depopTime = mob:getLocalVar("depopTime");


    if (mob:getHPP() <= 25) then
        if (Boost_Used == 1) then
            mob:setMod(MOD_TRIPLE_ATTACK,30);
            mob:setMod(MOD_UFASTCAST, 75);
            mob:setMod(MOD_REGAIN, 30);
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_TRIPLE_ATTACK,20);
            mob:setMod(MOD_UFASTCAST, 50);
            mob:setMod(MOD_REGAIN, 10);
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_II)) then -- Krabimanjaro Kill
        ally:addKeyItem(CRIMSON_STRATUM_ABYSSITE_III);
        ally:delKeyItem(CRIMSON_STRATUM_ABYSSITE_II);
        ally:messageSpecial(KEYITEM_OBTAINED, CRIMSON_STRATUM_ABYSSITE_III);
    end

    ally:addCurrency("bayld", 50);
    ally:addExp(10000);
end;
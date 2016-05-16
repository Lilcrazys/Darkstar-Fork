-----------------------------------
-- Area: EDIT ME
-- VWNM: GwynnApnudd
-----------------------------------
package.loaded["scripts/zones/Konschtat_Highlands/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Konschtat_Highlands/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 60);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,85);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9639,0,8919,50); -- Ifritear
        SetDropRate(9639,0,8920,0); -- Leviatear    
        SetDropRate(9639,0,8921,0); -- Ramutear    
        SetDropRate(9639,0,8922,0); -- Garutear    
        SetDropRate(9639,0,8923,0); -- Titatear    
        SetDropRate(9639,0,8924,0); -- Shivatear   
        SetDropRate(9639,0,8925,0); -- Carbutear
        SetDropRate(9639,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9639,0,8919,0); -- Ifritear
        SetDropRate(9639,0,8920,50); -- Leviatear    
        SetDropRate(9639,0,8921,0); -- Ramutear    
        SetDropRate(9639,0,8922,0); -- Garutear    
        SetDropRate(9639,0,8923,0); -- Titatear    
        SetDropRate(9639,0,8924,0); -- Shivatear   
        SetDropRate(9639,0,8925,0); -- Carbutear
        SetDropRate(9639,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9639,0,8919,0); -- Ifritear
        SetDropRate(9639,0,8920,0); -- Leviatear    
        SetDropRate(9639,0,8921,50); -- Ramutear    
        SetDropRate(9639,0,8922,0); -- Garutear    
        SetDropRate(9639,0,8923,0); -- Titatear    
        SetDropRate(9639,0,8924,0); -- Shivatear   
        SetDropRate(9639,0,8925,0); -- Carbutear
        SetDropRate(9639,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9639,0,8919,0); -- Ifritear
        SetDropRate(9639,0,8920,0); -- Leviatear    
        SetDropRate(9639,0,8921,0); -- Ramutear    
        SetDropRate(9639,0,8922,50); -- Garutear    
        SetDropRate(9639,0,8923,0); -- Titatear    
        SetDropRate(9639,0,8924,0); -- Shivatear   
        SetDropRate(9639,0,8925,0); -- Carbutear
        SetDropRate(9639,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9639,0,8919,0); -- Ifritear
        SetDropRate(9639,0,8920,0); -- Leviatear    
        SetDropRate(9639,0,8921,0); -- Ramutear    
        SetDropRate(9639,0,8922,0); -- Garutear    
        SetDropRate(9639,0,8923,50); -- Titatear    
        SetDropRate(9639,0,8924,0); -- Shivatear   
        SetDropRate(9639,0,8925,0); -- Carbutear
        SetDropRate(9639,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9639,0,8919,0); -- Ifritear
        SetDropRate(9639,0,8920,0); -- Leviatear    
        SetDropRate(9639,0,8921,0); -- Ramutear    
        SetDropRate(9639,0,8922,0); -- Garutear    
        SetDropRate(9639,0,8923,0); -- Titatear    
        SetDropRate(9639,0,8924,50); -- Shivatear   
        SetDropRate(9639,0,8925,0); -- Carbutear
        SetDropRate(9639,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9639,0,8919,0); -- Ifritear
        SetDropRate(9639,0,8920,0); -- Leviatear    
        SetDropRate(9639,0,8921,0); -- Ramutear    
        SetDropRate(9639,0,8922,0); -- Garutear    
        SetDropRate(9639,0,8923,0); -- Titatear    
        SetDropRate(9639,0,8924,0); -- Shivatear   
        SetDropRate(9639,0,8925,50); -- Carbutear
        SetDropRate(9639,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9639,0,8919,0); -- Ifritear
        SetDropRate(9639,0,8920,0); -- Leviatear    
        SetDropRate(9639,0,8921,0); -- Ramutear    
        SetDropRate(9639,0,8922,0); -- Garutear    
        SetDropRate(9639,0,8923,0); -- Titatear    
        SetDropRate(9639,0,8924,0); -- Shivatear   
        SetDropRate(9639,0,8925,0); -- Carbutear
        SetDropRate(9639,0,8926,50); -- Fenritear       
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("bayld", 400);
    player:addExp(10000);

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_V)) then -- Gwynn Ap Nudd Kill
        if (player:getMaskBit(player:getVar("WHITE_STRATUM_V"), 1) == false) then
           player:setMaskBit(player:getVar("WHITE_STRATUM_V"),"WHITE_STRATUM_V",1,true);
        end
        if (player:isMaskFull(player:getVar("WHITE_STRATUM_V"),3) == true) then
           player:addKeyItem(WHITE_STRATUM_ABYSSITE_VI);
           player:delKeyItem(WHITE_STRATUM_ABYSSITE_V);
           player:setVar("WHITE_STRATUM_V", 0);
           player:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
        end
    end;    
end;
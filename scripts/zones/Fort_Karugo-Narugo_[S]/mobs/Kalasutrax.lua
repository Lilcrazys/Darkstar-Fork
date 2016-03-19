-----------------------------------
-- Area: EDIT ME
-- VWNM: ME TO
-----------------------------------
package.loaded["scripts/zones/Fort_Karugo-Narugo_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Fort_Karugo-Narugo_[S]/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_TRIPLE_ATTACK,25);
    mob:setMod(MOD_ACC,2200);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
    local stance = mob:getLocalVar("stance");  -- Stance 1 = Raksha, Stance 0 = Yaksha
    local depopTime = mob:getLocalVar("depopTime");

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 600);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Kalasutrax Kill
        if (ally:getMaskBit(ally:getVar("JEUNO_VW"), 2) == false) then
            ally:setMaskBit(ally:getVar("JEUNO_VW"),"JEUNO_VW",2,true);
        end
        if (ally:isMaskFull(ally:getVar("JEUNO_VW"),5) == true) then
            ally:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        end
    end
    
    local RND1 = math.random(1,8);
        if (RND1 == 1) then
            SetDropRate(9643,0,8919,50); -- Ifritear
            SetDropRate(9643,0,8920,0); -- Leviatear    
            SetDropRate(9643,0,8921,0); -- Ramutear    
            SetDropRate(9643,0,8922,0); -- Garutear    
            SetDropRate(9643,0,8923,0); -- Titatear    
            SetDropRate(9643,0,8924,0); -- Shivatear   
            SetDropRate(9643,0,8925,0); -- Carbutear
            SetDropRate(9643,0,8926,0); -- Fenritear
        elseif (RND1 == 2) then
            SetDropRate(9643,0,8919,0); -- Ifritear
            SetDropRate(9643,0,8920,50); -- Leviatear    
            SetDropRate(9643,0,8921,0); -- Ramutear    
            SetDropRate(9643,0,8922,0); -- Garutear    
            SetDropRate(9643,0,8923,0); -- Titatear    
            SetDropRate(9643,0,8924,0); -- Shivatear   
            SetDropRate(9643,0,8925,0); -- Carbutear
            SetDropRate(9643,0,8926,0); -- Fenritear
        elseif (RND1 == 3) then
            SetDropRate(9643,0,8919,0); -- Ifritear
            SetDropRate(9643,0,8920,0); -- Leviatear    
            SetDropRate(9643,0,8921,50); -- Ramutear    
            SetDropRate(9643,0,8922,0); -- Garutear    
            SetDropRate(9643,0,8923,0); -- Titatear    
            SetDropRate(9643,0,8924,0); -- Shivatear   
            SetDropRate(9643,0,8925,0); -- Carbutear
            SetDropRate(9643,0,8926,0); -- Fenritear
        elseif (RND1 == 4) then
            SetDropRate(9643,0,8919,0); -- Ifritear
            SetDropRate(9643,0,8920,0); -- Leviatear    
            SetDropRate(9643,0,8921,0); -- Ramutear    
            SetDropRate(9643,0,8922,50); -- Garutear    
            SetDropRate(9643,0,8923,0); -- Titatear    
            SetDropRate(9643,0,8924,0); -- Shivatear   
            SetDropRate(9643,0,8925,0); -- Carbutear
            SetDropRate(9643,0,8926,0); -- Fenritear
        elseif (RND1 == 5) then
            SetDropRate(9643,0,8919,0); -- Ifritear
            SetDropRate(9643,0,8920,0); -- Leviatear    
            SetDropRate(9643,0,8921,0); -- Ramutear    
            SetDropRate(9643,0,8922,0); -- Garutear    
            SetDropRate(9643,0,8923,50); -- Titatear    
            SetDropRate(9643,0,8924,0); -- Shivatear   
            SetDropRate(9643,0,8925,0); -- Carbutear
            SetDropRate(9643,0,8926,0); -- Fenritear
        elseif (RND1 == 6) then
            SetDropRate(9643,0,8919,0); -- Ifritear
            SetDropRate(9643,0,8920,0); -- Leviatear    
            SetDropRate(9643,0,8921,0); -- Ramutear    
            SetDropRate(9643,0,8922,0); -- Garutear    
            SetDropRate(9643,0,8923,0); -- Titatear    
            SetDropRate(9643,0,8924,50); -- Shivatear   
            SetDropRate(9643,0,8925,0); -- Carbutear
            SetDropRate(9643,0,8926,0); -- Fenritear
        elseif (RND1 == 7) then
            SetDropRate(9643,0,8919,0); -- Ifritear
            SetDropRate(9643,0,8920,0); -- Leviatear    
            SetDropRate(9643,0,8921,0); -- Ramutear    
            SetDropRate(9643,0,8922,0); -- Garutear    
            SetDropRate(9643,0,8923,0); -- Titatear    
            SetDropRate(9643,0,8924,0); -- Shivatear   
            SetDropRate(9643,0,8925,50); -- Carbutear
            SetDropRate(9643,0,8926,0); -- Fenritear
        elseif (RND1 == 8) then
            SetDropRate(9643,0,8919,0); -- Ifritear
            SetDropRate(9643,0,8920,0); -- Leviatear    
            SetDropRate(9643,0,8921,0); -- Ramutear    
            SetDropRate(9643,0,8922,0); -- Garutear    
            SetDropRate(9643,0,8923,0); -- Titatear    
            SetDropRate(9643,0,8924,0); -- Shivatear   
            SetDropRate(9643,0,8925,0); -- Carbutear
            SetDropRate(9643,0,8926,50); -- Fenritear       
    end
    
end;
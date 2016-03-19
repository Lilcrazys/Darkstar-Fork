-----------------------------------
-- Area: EDIT ME
-- VWNM: Rw Nw Prt M Hrw
-----------------------------------
package.loaded["scripts/zones/East_Sarutabaruta/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/East_Sarutabaruta/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);
    mob:setMobMod(MOBMOD_DRAW_IN, 1);

    -- addMod
    mob:addMod(MOD_MDEF,40);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 45);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,85);

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
    local Book_2hr_Used = mob:getLocalVar("Book_2hr");

    if (mob:getHPP() <= 40) then
        if (Book_2hr_Used == 0) then
            mob:useMobAbility(436); -- RDM
            mob:setLocalVar("Book_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    ally:addCurrency("bayld", 300);
    ally:addExp(10000);

    if (ally:hasKeyItem(WHITE_STRATUM_ABYSSITE_IV)) then -- Rw Nw Prt M Hrw Kill
        if (ally:getMaskBit(ally:getVar("WHITE_STRATUM_IV"), 2) == false) then
            ally:setMaskBit(ally:getVar("WHITE_STRATUM_IV"),"WHITE_STRATUM_IV",2,true);
        end

        if (ally:isMaskFull(ally:getVar("WHITE_STRATUM_IV"),3) == true) then
            ally:addKeyItem(WHITE_STRATUM_ABYSSITE_V);
            ally:delKeyItem(WHITE_STRATUM_ABYSSITE_IV);
            ally:setVar("WHITE_STRATUM_IV", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, WHITE_STRATUM_ABYSSITE_V);
        end
    end;
    
    local RND1 = math.random(1,8);
        if (RND1 == 1) then
            SetDropRate(9637,0,8919,50); -- Ifritear
            SetDropRate(9637,0,8920,0); -- Leviatear    
            SetDropRate(9637,0,8921,0); -- Ramutear    
            SetDropRate(9637,0,8922,0); -- Garutear    
            SetDropRate(9637,0,8923,0); -- Titatear    
            SetDropRate(9637,0,8924,0); -- Shivatear   
            SetDropRate(9637,0,8925,0); -- Carbutear
            SetDropRate(9637,0,8926,0); -- Fenritear
        elseif (RND1 == 2) then
            SetDropRate(9637,0,8919,0); -- Ifritear
            SetDropRate(9637,0,8920,50); -- Leviatear    
            SetDropRate(9637,0,8921,0); -- Ramutear    
            SetDropRate(9637,0,8922,0); -- Garutear    
            SetDropRate(9637,0,8923,0); -- Titatear    
            SetDropRate(9637,0,8924,0); -- Shivatear   
            SetDropRate(9637,0,8925,0); -- Carbutear
            SetDropRate(9637,0,8926,0); -- Fenritear
        elseif (RND1 == 3) then
            SetDropRate(9637,0,8919,0); -- Ifritear
            SetDropRate(9637,0,8920,0); -- Leviatear    
            SetDropRate(9637,0,8921,50); -- Ramutear    
            SetDropRate(9637,0,8922,0); -- Garutear    
            SetDropRate(9637,0,8923,0); -- Titatear    
            SetDropRate(9637,0,8924,0); -- Shivatear   
            SetDropRate(9637,0,8925,0); -- Carbutear
            SetDropRate(9637,0,8926,0); -- Fenritear
        elseif (RND1 == 4) then
            SetDropRate(9637,0,8919,0); -- Ifritear
            SetDropRate(9637,0,8920,0); -- Leviatear    
            SetDropRate(9637,0,8921,0); -- Ramutear    
            SetDropRate(9637,0,8922,50); -- Garutear    
            SetDropRate(9637,0,8923,0); -- Titatear    
            SetDropRate(9637,0,8924,0); -- Shivatear   
            SetDropRate(9637,0,8925,0); -- Carbutear
            SetDropRate(9637,0,8926,0); -- Fenritear
        elseif (RND1 == 5) then
            SetDropRate(9637,0,8919,0); -- Ifritear
            SetDropRate(9637,0,8920,0); -- Leviatear    
            SetDropRate(9637,0,8921,0); -- Ramutear    
            SetDropRate(9637,0,8922,0); -- Garutear    
            SetDropRate(9637,0,8923,50); -- Titatear    
            SetDropRate(9637,0,8924,0); -- Shivatear   
            SetDropRate(9637,0,8925,0); -- Carbutear
            SetDropRate(9637,0,8926,0); -- Fenritear
        elseif (RND1 == 6) then
            SetDropRate(9637,0,8919,0); -- Ifritear
            SetDropRate(9637,0,8920,0); -- Leviatear    
            SetDropRate(9637,0,8921,0); -- Ramutear    
            SetDropRate(9637,0,8922,0); -- Garutear    
            SetDropRate(9637,0,8923,0); -- Titatear    
            SetDropRate(9637,0,8924,50); -- Shivatear   
            SetDropRate(9637,0,8925,0); -- Carbutear
            SetDropRate(9637,0,8926,0); -- Fenritear
        elseif (RND1 == 7) then
            SetDropRate(9637,0,8919,0); -- Ifritear
            SetDropRate(9637,0,8920,0); -- Leviatear    
            SetDropRate(9637,0,8921,0); -- Ramutear    
            SetDropRate(9637,0,8922,0); -- Garutear    
            SetDropRate(9637,0,8923,0); -- Titatear    
            SetDropRate(9637,0,8924,0); -- Shivatear   
            SetDropRate(9637,0,8925,50); -- Carbutear
            SetDropRate(9637,0,8926,0); -- Fenritear
        elseif (RND1 == 8) then
            SetDropRate(9637,0,8919,0); -- Ifritear
            SetDropRate(9637,0,8920,0); -- Leviatear    
            SetDropRate(9637,0,8921,0); -- Ramutear    
            SetDropRate(9637,0,8922,0); -- Garutear    
            SetDropRate(9637,0,8923,0); -- Titatear    
            SetDropRate(9637,0,8924,0); -- Shivatear   
            SetDropRate(9637,0,8925,0); -- Carbutear
            SetDropRate(9637,0,8926,50); -- Fenritear       
    end
    
end;
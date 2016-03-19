-----------------------------------
-- Area: ?
-- VWNM: Pancimanci
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/West_Sarutabaruta_[S]/TextIDs");
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
    mob:addMod(MOD_ATT,350);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_HASTE_ABILITY, 35);
    mob:setMod(MOD_MACC,2000);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_TRIPLE_ATTACK, 20);
    mob:setMod(MOD_DEF,1400);
    mob:setMod(MOD_ACC,1400);

    -- Vars
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9605,8919,50); -- Ifritear
        SetDropRate(9605,8920,0); -- Leviatear
        SetDropRate(9605,8921,0); -- Ramutear
        SetDropRate(9605,8922,0); -- Garutear
        SetDropRate(9605,8923,0); -- Titatear
        SetDropRate(9605,8924,0); -- Shivatear
        SetDropRate(9605,8925,0); -- Carbutear
        SetDropRate(9605,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9605,8919,0); -- Ifritear
        SetDropRate(9605,8920,50); -- Leviatear
        SetDropRate(9605,8921,0); -- Ramutear
        SetDropRate(9605,8922,0); -- Garutear
        SetDropRate(9605,8923,0); -- Titatear
        SetDropRate(9605,8924,0); -- Shivatear
        SetDropRate(9605,8925,0); -- Carbutear
        SetDropRate(9605,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9605,8919,0); -- Ifritear
        SetDropRate(9605,8920,0); -- Leviatear
        SetDropRate(9605,8921,50); -- Ramutear
        SetDropRate(9605,8922,0); -- Garutear
        SetDropRate(9605,8923,0); -- Titatear
        SetDropRate(9605,8924,0); -- Shivatear
        SetDropRate(9605,8925,0); -- Carbutear
        SetDropRate(9605,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9605,8919,0); -- Ifritear
        SetDropRate(9605,8920,0); -- Leviatear
        SetDropRate(9605,8921,0); -- Ramutear
        SetDropRate(9605,8922,50); -- Garutear
        SetDropRate(9605,8923,0); -- Titatear
        SetDropRate(9605,8924,0); -- Shivatear
        SetDropRate(9605,8925,0); -- Carbutear
        SetDropRate(9605,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9605,8919,0); -- Ifritear
        SetDropRate(9605,8920,0); -- Leviatear
        SetDropRate(9605,8921,0); -- Ramutear
        SetDropRate(9605,8922,0); -- Garutear
        SetDropRate(9605,8923,50); -- Titatear
        SetDropRate(9605,8924,0); -- Shivatear
        SetDropRate(9605,8925,0); -- Carbutear
        SetDropRate(9605,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9605,8919,0); -- Ifritear
        SetDropRate(9605,8920,0); -- Leviatear
        SetDropRate(9605,8921,0); -- Ramutear
        SetDropRate(9605,8922,0); -- Garutear
        SetDropRate(9605,8923,0); -- Titatear
        SetDropRate(9605,8924,50); -- Shivatear
        SetDropRate(9605,8925,0); -- Carbutear
        SetDropRate(9605,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9605,8919,0); -- Ifritear
        SetDropRate(9605,8920,0); -- Leviatear
        SetDropRate(9605,8921,0); -- Ramutear
        SetDropRate(9605,8922,0); -- Garutear
        SetDropRate(9605,8923,0); -- Titatear
        SetDropRate(9605,8924,0); -- Shivatear
        SetDropRate(9605,8925,50); -- Carbutear
        SetDropRate(9605,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9605,8919,0); -- Ifritear
        SetDropRate(9605,8920,0); -- Leviatear
        SetDropRate(9605,8921,0); -- Ramutear
        SetDropRate(9605,8922,0); -- Garutear
        SetDropRate(9605,8923,0); -- Titatear
        SetDropRate(9605,8924,0); -- Shivatear
        SetDropRate(9605,8925,0); -- Carbutear
        SetDropRate(9605,8926,50); -- Fenritear
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
    local depopTime = mob:getLocalVar("depopTime");

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    if (ally:hasKeyItem(JADE_STRATUM_ABYSSITE)) then -- Pancimanci Kill
        if (ally:getMaskBit(ally:getVar("JADE_STRATUM"), 1) == false) then
            ally:setMaskBit(ally:getVar("JADE_STRATUM"),"JADE_STRATUM",1,true);
        end
        if (ally:isMaskFull(ally:getVar("JADE_STRATUM"),2) == true) then
            ally:addKeyItem(JADE_STRATUM_ABYSSITE_II);
            ally:delKeyItem(JADE_STRATUM_ABYSSITE);
            ally:setVar("JADE_STRATUM", 0);
            ally:messageSpecial(KEYITEM_OBTAINED, JADE_STRATUM_ABYSSITE_II);
        end
    end

    ally:addExp(10000);
end;
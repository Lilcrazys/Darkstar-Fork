-----------------------------------
-- Area: EDIT ME
-- VWNM: Ocythoe
-----------------------------------
package.loaded["scripts/zones/Grauberg_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Grauberg_[S]/TextIDs");
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
    mob:addMod(MOD_ATT,100);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,85);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9642,0,8919,50); -- Ifritear
        SetDropRate(9642,0,8920,0); -- Leviatear    
        SetDropRate(9642,0,8921,0); -- Ramutear    
        SetDropRate(9642,0,8922,0); -- Garutear    
        SetDropRate(9642,0,8923,0); -- Titatear    
        SetDropRate(9642,0,8924,0); -- Shivatear   
        SetDropRate(9642,0,8925,0); -- Carbutear
        SetDropRate(9642,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9642,0,8919,0); -- Ifritear
        SetDropRate(9642,0,8920,50); -- Leviatear    
        SetDropRate(9642,0,8921,0); -- Ramutear    
        SetDropRate(9642,0,8922,0); -- Garutear    
        SetDropRate(9642,0,8923,0); -- Titatear    
        SetDropRate(9642,0,8924,0); -- Shivatear   
        SetDropRate(9642,0,8925,0); -- Carbutear
        SetDropRate(9642,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9642,0,8919,0); -- Ifritear
        SetDropRate(9642,0,8920,0); -- Leviatear    
        SetDropRate(9642,0,8921,50); -- Ramutear    
        SetDropRate(9642,0,8922,0); -- Garutear    
        SetDropRate(9642,0,8923,0); -- Titatear    
        SetDropRate(9642,0,8924,0); -- Shivatear   
        SetDropRate(9642,0,8925,0); -- Carbutear
        SetDropRate(9642,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9642,0,8919,0); -- Ifritear
        SetDropRate(9642,0,8920,0); -- Leviatear    
        SetDropRate(9642,0,8921,0); -- Ramutear    
        SetDropRate(9642,0,8922,50); -- Garutear    
        SetDropRate(9642,0,8923,0); -- Titatear    
        SetDropRate(9642,0,8924,0); -- Shivatear   
        SetDropRate(9642,0,8925,0); -- Carbutear
        SetDropRate(9642,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9642,0,8919,0); -- Ifritear
        SetDropRate(9642,0,8920,0); -- Leviatear    
        SetDropRate(9642,0,8921,0); -- Ramutear    
        SetDropRate(9642,0,8922,0); -- Garutear    
        SetDropRate(9642,0,8923,50); -- Titatear    
        SetDropRate(9642,0,8924,0); -- Shivatear   
        SetDropRate(9642,0,8925,0); -- Carbutear
        SetDropRate(9642,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9642,0,8919,0); -- Ifritear
        SetDropRate(9642,0,8920,0); -- Leviatear    
        SetDropRate(9642,0,8921,0); -- Ramutear    
        SetDropRate(9642,0,8922,0); -- Garutear    
        SetDropRate(9642,0,8923,0); -- Titatear    
        SetDropRate(9642,0,8924,50); -- Shivatear   
        SetDropRate(9642,0,8925,0); -- Carbutear
        SetDropRate(9642,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9642,0,8919,0); -- Ifritear
        SetDropRate(9642,0,8920,0); -- Leviatear    
        SetDropRate(9642,0,8921,0); -- Ramutear    
        SetDropRate(9642,0,8922,0); -- Garutear    
        SetDropRate(9642,0,8923,0); -- Titatear    
        SetDropRate(9642,0,8924,0); -- Shivatear   
        SetDropRate(9642,0,8925,50); -- Carbutear
        SetDropRate(9642,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9642,0,8919,0); -- Ifritear
        SetDropRate(9642,0,8920,0); -- Leviatear    
        SetDropRate(9642,0,8921,0); -- Ramutear    
        SetDropRate(9642,0,8922,0); -- Garutear    
        SetDropRate(9642,0,8923,0); -- Titatear    
        SetDropRate(9642,0,8924,0); -- Shivatear   
        SetDropRate(9642,0,8925,0); -- Carbutear
        SetDropRate(9642,0,8926,50); -- Fenritear       
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

    local Ocythoe = mob:getLocalVar("Ocythoe");

    if (mob:getHPP() <= 15) then
        if (Ocythoe_Used == 2) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 3);
        end
    elseif (mob:getHPP() <= 40) then
        if (Ocythoe_Used == 1) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Ocythoe_Used == 0) then
            mob:useMobAbility(436); -- CS
            mob:setLocalVar("Ocythoe", 1);
        end
    end
end;

-----------------------------------
-- onSpellPrecast
-----------------------------------

function onSpellPrecast(mob, spell)
    local power = math.random(50,150);
    mob:addStatusEffect(EFFECT_SHOCK_SPIKES,power,0,30);
    mob:getStatusEffect(EFFECT_SHOCK_SPIKES):setFlag(32);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("bayld", 600);
    player:addExp(10000);

    if (player:hasKeyItem(WHITE_STRATUM_ABYSSITE_VI)) then -- Ocythoe Kill
        if (player:getMaskBit(player:getVar("JEUNO_VW"), 1) == false) then
           player:setMaskBit(player:getVar("JEUNO_VW"),"JEUNO_VW",1,true);
        end
        if (player:isMaskFull(player:getVar("JEUNO_VW"),5) == true) then
           player:delKeyItem(WHITE_STRATUM_ABYSSITE_VI);
        end
    end    
end;
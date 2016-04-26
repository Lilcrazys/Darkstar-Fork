-----------------------------------
-- Area: EDIT ME
-- VWNM: Nympha Eunomia
-----------------------------------
package.loaded["scripts/zones/Crawlers_Nest_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Crawlers_Nest_[S]/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAGIC_COOL, 45);
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());

    -- addMod
    mob:addMod(MOD_MDEF,80);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,250);
    
    local RND1 = math.random(1,8);
    if (RND1 == 1) then
        SetDropRate(9629,0,8919,50); -- Ifritear
        SetDropRate(9629,0,8920,0); -- Leviatear    
        SetDropRate(9629,0,8921,0); -- Ramutear    
        SetDropRate(9629,0,8922,0); -- Garutear    
        SetDropRate(9629,0,8923,0); -- Titatear    
        SetDropRate(9629,0,8924,0); -- Shivatear   
        SetDropRate(9629,0,8925,0); -- Carbutear
        SetDropRate(9629,0,8926,0); -- Fenritear
    elseif (RND1 == 2) then
        SetDropRate(9629,0,8919,0); -- Ifritear
        SetDropRate(9629,0,8920,50); -- Leviatear    
        SetDropRate(9629,0,8921,0); -- Ramutear    
        SetDropRate(9629,0,8922,0); -- Garutear    
        SetDropRate(9629,0,8923,0); -- Titatear    
        SetDropRate(9629,0,8924,0); -- Shivatear   
        SetDropRate(9629,0,8925,0); -- Carbutear
        SetDropRate(9629,0,8926,0); -- Fenritear
    elseif (RND1 == 3) then
        SetDropRate(9629,0,8919,0); -- Ifritear
        SetDropRate(9629,0,8920,0); -- Leviatear    
        SetDropRate(9629,0,8921,50); -- Ramutear    
        SetDropRate(9629,0,8922,0); -- Garutear    
        SetDropRate(9629,0,8923,0); -- Titatear    
        SetDropRate(9629,0,8924,0); -- Shivatear   
        SetDropRate(9629,0,8925,0); -- Carbutear
        SetDropRate(9629,0,8926,0); -- Fenritear
    elseif (RND1 == 4) then
        SetDropRate(9629,0,8919,0); -- Ifritear
        SetDropRate(9629,0,8920,0); -- Leviatear    
        SetDropRate(9629,0,8921,0); -- Ramutear    
        SetDropRate(9629,0,8922,50); -- Garutear    
        SetDropRate(9629,0,8923,0); -- Titatear    
        SetDropRate(9629,0,8924,0); -- Shivatear   
        SetDropRate(9629,0,8925,0); -- Carbutear
        SetDropRate(9629,0,8926,0); -- Fenritear
    elseif (RND1 == 5) then
        SetDropRate(9629,0,8919,0); -- Ifritear
        SetDropRate(9629,0,8920,0); -- Leviatear    
        SetDropRate(9629,0,8921,0); -- Ramutear    
        SetDropRate(9629,0,8922,0); -- Garutear    
        SetDropRate(9629,0,8923,50); -- Titatear    
        SetDropRate(9629,0,8924,0); -- Shivatear   
        SetDropRate(9629,0,8925,0); -- Carbutear
        SetDropRate(9629,0,8926,0); -- Fenritear
    elseif (RND1 == 6) then
        SetDropRate(9629,0,8919,0); -- Ifritear
        SetDropRate(9629,0,8920,0); -- Leviatear    
        SetDropRate(9629,0,8921,0); -- Ramutear    
        SetDropRate(9629,0,8922,0); -- Garutear    
        SetDropRate(9629,0,8923,0); -- Titatear    
        SetDropRate(9629,0,8924,50); -- Shivatear   
        SetDropRate(9629,0,8925,0); -- Carbutear
        SetDropRate(9629,0,8926,0); -- Fenritear
    elseif (RND1 == 7) then
        SetDropRate(9629,0,8919,0); -- Ifritear
        SetDropRate(9629,0,8920,0); -- Leviatear    
        SetDropRate(9629,0,8921,0); -- Ramutear    
        SetDropRate(9629,0,8922,0); -- Garutear    
        SetDropRate(9629,0,8923,0); -- Titatear    
        SetDropRate(9629,0,8924,0); -- Shivatear   
        SetDropRate(9629,0,8925,50); -- Carbutear
        SetDropRate(9629,0,8926,0); -- Fenritear
    elseif (RND1 == 8) then
        SetDropRate(9629,0,8919,0); -- Ifritear
        SetDropRate(9629,0,8920,0); -- Leviatear    
        SetDropRate(9629,0,8921,0); -- Ramutear    
        SetDropRate(9629,0,8922,0); -- Garutear    
        SetDropRate(9629,0,8923,0); -- Titatear    
        SetDropRate(9629,0,8924,0); -- Shivatear   
        SetDropRate(9629,0,8925,0); -- Carbutear
        SetDropRate(9629,0,8926,50); -- Fenritear       
    end   
    
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN, 20);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1950);
    mob:setMod(MOD_MATT,100);

    -- var
    -- mob:setLocalVar("depopTime", os.time(t) + 1800);  -- despawn in 30 min
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
-- onAdditionalEffect Action
-----------------------------------

function onAdditionalEffect(mob,target,damage)
    if ((math.random(1,10) > 4) or (target:hasStatusEffect(EFFECT_SLOW) == true)) then
        return 0,0,0;
    else
        target:addStatusEffect(EFFECT_SLOW,30,0,10);
    end
    return SUBEFFECT_PARALYSIS,163,EFFECT_SLOW;
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    SpawnMob(mob:getID()+1) -- Spawns Next Form
end;
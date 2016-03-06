-----------------------------------
-- Area:Uleguerland Range
--  NM:  Bonnacon
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
    
    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(370,4776,100); 
        SetDropRate(370,5105,0);
        SetDropRate(370,4705,0);
        SetDropRate(370,5499,0);
        SetDropRate(370,6059,0);
    elseif (RND1 == 2) then
        SetDropRate(370,4776,0);
        SetDropRate(370,5105,100);
        SetDropRate(370,4705,0); 
        SetDropRate(370,5499,0); 
        SetDropRate(370,6059,0); 
    elseif (RND1 == 3) then
        SetDropRate(370,4776,0); 
        SetDropRate(370,5105,0); 
        SetDropRate(370,4705,100); 
        SetDropRate(370,5499,0); 
        SetDropRate(370,6059,0); 
    elseif (RND1 == 4) then
        SetDropRate(370,4776,0); 
        SetDropRate(370,5105,0); 
        SetDropRate(370,4705,0); 
        SetDropRate(370,5499,100); 
        SetDropRate(370,6059,0); 
    elseif (RND1 == 5) then
        SetDropRate(370,4776,0); 
        SetDropRate(370,5105,0); 
        SetDropRate(370,4705,0); 
        SetDropRate(370,5499,0); 
        SetDropRate(370,6059,100);   
    end        
    
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobFight
-----------------------------------
function onMobFight(mob,target)
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
	ally:addTitle(HOT_DOG);
end;
-----------------------------------
-- Area: Ifrits Cauldron
--  NM:  Tyrannic Tunnok
-----------------------------------

require("scripts/globals/status");
-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK,15);
    
    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(3642,4766,100); 
        SetDropRate(3642,5080,0);
        SetDropRate(3642,4613,0);
        SetDropRate(3642,5498,0);
        SetDropRate(3642,4707,0);
    elseif (RND1 == 2) then
        SetDropRate(3642,4766,0);
        SetDropRate(3642,5080,100);
        SetDropRate(3642,4613,0); 
        SetDropRate(3642,5498,0); 
        SetDropRate(3642,4707,0); 
    elseif (RND1 == 3) then
        SetDropRate(3642,4766,0); 
        SetDropRate(3642,5080,0); 
        SetDropRate(3642,4613,100); 
        SetDropRate(3642,5498,0); 
        SetDropRate(3642,4707,0); 
    elseif (RND1 == 4) then
        SetDropRate(3642,4766,0); 
        SetDropRate(3642,5080,0); 
        SetDropRate(3642,4613,0); 
        SetDropRate(3642,5498,100); 
        SetDropRate(3642,4707,0); 
    elseif (RND1 == 5) then
        SetDropRate(3642,4766,0); 
        SetDropRate(3642,5080,0); 
        SetDropRate(3642,4613,0); 
        SetDropRate(3642,5498,0); 
        SetDropRate(3642,4707,100);   
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
end;

-----------------------------------
-- Area: Ifrit's Cauldron
--  NM:  Vouivre
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
	mob:setMod(MOD_REGAIN,33);
    
    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(4031,4748,100); 
        SetDropRate(4031,4761,0);
        SetDropRate(4031,4863,0);
        SetDropRate(4031,5078,0);
        SetDropRate(4031,5479,0);
    elseif (RND1 == 2) then
        SetDropRate(4031,4748,0);
        SetDropRate(4031,4761,100);
        SetDropRate(4031,4863,0); 
        SetDropRate(4031,5078,0); 
        SetDropRate(4031,5479,0); 
    elseif (RND1 == 3) then
        SetDropRate(4031,4748,0); 
        SetDropRate(4031,4761,0); 
        SetDropRate(4031,4863,100); 
        SetDropRate(4031,5078,0); 
        SetDropRate(4031,5479,0); 
    elseif (RND1 == 4) then
        SetDropRate(4031,4748,0); 
        SetDropRate(4031,4761,0); 
        SetDropRate(4031,4863,0); 
        SetDropRate(4031,5078,100); 
        SetDropRate(4031,5479,0); 
    elseif (RND1 == 5) then
        SetDropRate(4031,4748,0); 
        SetDropRate(4031,4761,0); 
        SetDropRate(4031,4863,0); 
        SetDropRate(4031,5078,0); 
        SetDropRate(4031,5479,100);   
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

function onMobDeath(mob, player, isKiller)
end;

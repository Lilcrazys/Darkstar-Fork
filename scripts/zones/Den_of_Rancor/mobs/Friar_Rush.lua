-----------------------------------
-- Area: Den of Rancor
-- MOB:  Friar Rush
-----------------------------------
package.loaded["scripts/zones/Den_of_Rancor/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/fieldsofvalor");
require("scripts/globals/monstertpmoves");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_ACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(1049,4748,100); 
        SetDropRate(1049,4756,0);
        SetDropRate(1049,4613,0);
        SetDropRate(1049,5500,0);
        SetDropRate(1049,4706,0);
    elseif (RND1 == 2) then
        SetDropRate(1049,4748,0);
        SetDropRate(1049,4756,100);
        SetDropRate(1049,4613,0); 
        SetDropRate(1049,5500,0); 
        SetDropRate(1049,4706,0); 
    elseif (RND1 == 3) then
        SetDropRate(1049,4748,0); 
        SetDropRate(1049,4756,0); 
        SetDropRate(1049,4613,100); 
        SetDropRate(1049,5500,0); 
        SetDropRate(1049,4706,0); 
    elseif (RND1 == 4) then
        SetDropRate(1049,4748,0); 
        SetDropRate(1049,4756,0); 
        SetDropRate(1049,4613,0); 
        SetDropRate(1049,5500,100); 
        SetDropRate(1049,4706,0); 
    elseif (RND1 == 5) then
        SetDropRate(1049,4748,0); 
        SetDropRate(1049,4756,0); 
        SetDropRate(1049,4613,0); 
        SetDropRate(1049,5500,0); 
        SetDropRate(1049,4706,100);   
    end 

end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer, ally)
    checkRegime(killer,mob,60,3);
end;

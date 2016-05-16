-----------------------------------
-- Area: The Boyhoda Tree
-- MOB:  Unut
-----------------------------------
package.loaded["scripts/zones/The_Boyahda_Tree/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/status");
require("scripts/globals/fieldsofvalor");
require("scripts/zones/The_Boyahda_Tree/TextIDs");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)

end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)

    local RND1 = math.random(1,5);
    if (RND1 == 1) then
        SetDropRate(3663,4766,100); 
        SetDropRate(3663,5080,0);
        SetDropRate(3663,4613,0);
        SetDropRate(3663,5498,0);
        SetDropRate(3663,4707,0);
    elseif (RND1 == 2) then
        SetDropRate(3663,4766,0);
        SetDropRate(3663,5080,100);
        SetDropRate(3663,4613,0); 
        SetDropRate(3663,5498,0); 
        SetDropRate(3663,4707,0); 
    elseif (RND1 == 3) then
        SetDropRate(3663,4766,0); 
        SetDropRate(3663,5080,0); 
        SetDropRate(3663,4613,100); 
        SetDropRate(3663,5498,0); 
        SetDropRate(3663,4707,0); 
    elseif (RND1 == 4) then
        SetDropRate(3663,4766,0); 
        SetDropRate(3663,5080,0); 
        SetDropRate(3663,4613,0); 
        SetDropRate(3663,5498,100); 
        SetDropRate(3663,4707,0); 
    elseif (RND1 == 5) then
        SetDropRate(3663,4766,0); 
        SetDropRate(3663,5080,0); 
        SetDropRate(3663,4613,0); 
        SetDropRate(3663,5498,0); 
        SetDropRate(3663,4707,100);   
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

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    local SPELL_ID = 578;
    local CHANCE = 25;
    if (math.random(0,99) < CHANCE and player:getMainJob() == JOB_BLU and player:hasSpell(SPELL_ID) == false) then
        player:addSpell(SPELL_ID);
    end
    checkRegime(killer,mob,90,3);
end;
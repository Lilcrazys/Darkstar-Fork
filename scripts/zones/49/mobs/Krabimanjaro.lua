-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Krabimanjaro
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 100);
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_MACC,900);
    mob:setMod(MOD_MATT,125);
    mob:setMod(MOD_TRIPLE_ATTACK,10);    
    

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,75);        
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
    local Boost_Used = mob:getLocalVar("Boost");

    if (mob:getHPP() <= 25) then
        if (Boost_Used == 1) then
            mob:setMod(MOD_TRIPLE_ATTACK,30); 
            mob:setMod(MOD_UFASTCAST, 75);
            mob:setMod(MOD_REGAIN, 30);              
            mob:setLocalVar("Boost", 2);
        end
    elseif (mob:getHPP() <= 50) then
        if (Boost_Used == 0) then
            mob:setMod(MOD_TRIPLE_ATTACK,20);  
            mob:setMod(MOD_UFASTCAST, 50);
            mob:setMod(MOD_REGAIN, 10);  
            mob:setLocalVar("Boost", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
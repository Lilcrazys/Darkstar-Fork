-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Pancimanci
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAGIC_COOL, 25);    
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
    mob:setMod(MOD_HASTE_ABILITY, 35);    
    mob:setMod(MOD_MACC,1200);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_TRIPLE_ATTACK, 20);
    mob:setMod(MOD_DEF,1500);
    mob:setMod(MOD_ACC,1400);    

    -- addMod
    mob:addMod(MOD_MDEF,25);
    mob:addMod(MOD_ATT,350);        
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
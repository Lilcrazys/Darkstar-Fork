-----------------------------------
-- Area: VoiddWatch NM
-- NPC:  Sallow_Seymour
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");


-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 200);
    mob:setMod(MOD_REGAIN, 10);    
    mob:setMod(MOD_MACC,900);
    mob:setMod(MOD_MATT,115);
    mob:setMod(MOD_DEF,1000);    

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,350);    
    mob:addMod(MOD_RATT,300);           
    mob:addMod(MOD_ACC,100);    
    mob:addMod(MOD_RACC,300);             
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
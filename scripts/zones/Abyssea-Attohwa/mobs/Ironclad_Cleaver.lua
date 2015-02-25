-----------------------------------
--  Area: Abyssea - Attohwa (215)
--   Mob: Ironclad_Cleaver
-----------------------------------

require("scripts/globals/abyssea");
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
	mob:addMod(MOD_MACC,1500);
	mob:addMod(MOD_EVA,-100);
	mob:addMod(MOD_ACC,200);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)	
end;
-----------------------------------
-- Area: Mamook
-- NPC:  Gulool Ja Ja
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
	mob:addMod(MOD_ACC,75);
	mob:addMod(MOD_MACC,500);
	mob:addMod(MOD_MATT,200);
    mob:addMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
	SpawnMob(17043876,180):updateEnmity(target);
	SpawnMob(17043877,180):updateEnmity(target);
	SpawnMob(17043878,180):updateEnmity(target);
	SpawnMob(17043879,180):updateEnmity(target);
	
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
	killer:addTitle(SHINING_SCALE_RIFLER);
end;
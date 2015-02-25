-----------------------------------
-- Area: Arrapago Reef
--  Mob: Nosferatu Murk
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
	mob:setMod(MOD_REGAIN,50);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
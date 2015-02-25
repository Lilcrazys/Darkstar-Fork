-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Ovni
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
	mob:hideName(true);
    mob:untargetable(true);
    mob:AnimationSub(5);
	mob:addMod(MOD_MATT,600);
	mob:addMod(MOD_MACC,300);
	mob:addMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
	mob:hideName(false);
    mob:untargetable(false);
    mob:AnimationSub(6);
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
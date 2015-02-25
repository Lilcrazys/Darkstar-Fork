-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Hadhayosh
-----------------------------------


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
	mob:addMod(MOD_MATT,35);
	mob:addMod(MOD_MACC,200);
	mob:addMod(MOD_EVA,-32);
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
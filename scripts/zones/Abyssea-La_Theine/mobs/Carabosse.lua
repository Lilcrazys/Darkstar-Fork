-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Carabosse
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

    -- setMod
    mob:addMod(MOD_MATT,80);
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_DEF,-77);
    mob:addMod(MOD_EVA,-77);
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
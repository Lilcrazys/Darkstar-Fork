-----------------------------------
--  Area: Abyssea - La Theine (132)
--   Mob: Briareus
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_MACC,300);
    mob:addMod(MOD_MEVA,100);
    mob:addMod(MOD_EVA,-77);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
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
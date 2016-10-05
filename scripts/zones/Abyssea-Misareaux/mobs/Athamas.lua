-----------------------------------
--  Area: Abyssea - Misareaux (216)
--   Mob: Athamas
-----------------------------------
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:addMod(MOD_INT,90);
    mob:addMod(MOD_MATT,375);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_MEVA,100);
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

function onMobDeath(mob, player, isKiller)
end;

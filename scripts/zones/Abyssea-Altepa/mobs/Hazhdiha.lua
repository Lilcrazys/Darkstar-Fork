-----------------------------------
--  Area: Abyssea - Altepa (218)
--   Mob: Hazhdiha
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

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
	mob:addMod(MOD_MATT,175);
	mob:addMod(MOD_MACC,500);
	mob:addMod(MOD_EVA,-150);
	mob:addMod(MOD_DEF,-200);
	mob:addMod(MOD_STR,50);
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
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)
end;
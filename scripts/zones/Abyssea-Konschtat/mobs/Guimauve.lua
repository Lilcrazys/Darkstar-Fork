-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Guimauve
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
    mob:addMod(MOD_DOUBLE_ATTACK,35);
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
	-- -- local result = DoCruor(killer,result);
	-- DoExp(killer,bonus);
    -- DoLights(mob,killer);
	-- PyxisSpawn(mob,killer,npc);

	-- killer:messageSpecial(CRUOR_OBTAINED,result);
end;
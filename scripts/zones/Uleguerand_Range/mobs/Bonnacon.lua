-----------------------------------
-- Area:Uleguerland Range
-- NPC:  Bonnacon
-----------------------------------

require("scripts/globals/titles");
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
    mob:addMod(MOD_DOUBLE_ATTACK,15);
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
	killer:addTitle(HOT_DOG);
end;
-----------------------------------
-- Area: Ifrit's Cauldron
--  NM:  Vouivre
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
	mob:setMod(MOD_REGAIN,33);
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

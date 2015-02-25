-----------------------------------
-- Area: Arrapago Reef
-- NPC:  Medusa
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_SUPERLINK, mob:getShortID());
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)
end;
-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
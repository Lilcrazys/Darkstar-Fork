--------------------------------------------
-- Area: Uleguerand Range
--  Mob: Little Wingman
-- Notes:
-- Assists Isarukitsck, who gains damage reduction for each Little Wingman killed.
-- When Isarukitsck uses Whiteout, all Little Wingman will switch to Isarukitsck's target
--------------------------------------------
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_ATT,150);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 25);
    mob:setMod(MOD_REGAIN, 10);
end;

-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;

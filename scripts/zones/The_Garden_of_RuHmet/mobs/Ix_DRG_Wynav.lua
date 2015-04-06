-----------------------------------
-- Area: The Garden of Ru'Hmet
-- NPC:  Ix_DRG_Wynav
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize
----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
-----------------------------------
-- Area: Grand Palace of HuXzoi
--  MOB: Qn'aern (RDM)
-- ID: 16916816
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR,1);
    mob:setMobMod(MOBMOD_2HOUR_MULTI,1);
end;

function onMobSpawn(mob)
    mob:setMobMod(MOBMOD_SUPERLINK, mob:getShortID());
    mob:setMod(MOD_REFRESH, 250);
    mob:setMod(MOD_UFASTCAST, 75);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,75);
end;

function onMobEngaged(mob,target)
end;

function onMobFight(mob,target)
end;

function onMobDeath(mob, player, isKiller)
end;
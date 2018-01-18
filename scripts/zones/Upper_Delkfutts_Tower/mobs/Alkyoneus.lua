-----------------------------------
-- Area: Upper Delkfutt's Tower
--  NM:  Alkyoneus
-----------------------------------
require("scripts/zones/Upper_Delkfutts_Tower/MobIDs");
require("scripts/globals/settings");

require("scripts/globals/status");

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_STR,7);
    mob:addMod(MOD_DEX,5);
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_ACC,200);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end; 

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    GetNPCByID(ALKYONEUS_QM):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
end;

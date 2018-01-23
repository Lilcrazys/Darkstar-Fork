-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'xzomit
-- Jailor of Love Pet version
-----------------------------------
require("scripts/zones/AlTaieu/MobIDs");
-----------------------------------

function onMobSpawn(mob)
    -- addMod
    mob:addMod(MOD_ACC,225);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_ACC,100);

    -- setMod
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,40);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
end;

function onMobDeath(mob, player, isKiller)
end;

function onMobDespawn(mob)
    local JoL = GetMobByID(JAILER_OF_LOVE);
    local XZOMITS = JoL:getLocalVar("JoL_Qn_xzomit_Killed");
    JoL:setLocalVar("JoL_Qn_xzomit_Killed", XZOMITS+1);
end;
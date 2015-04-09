-----------------------------------
-- Area: Al'Taieu
--  MOB: Qn'xzomit
-- Jailor of Justice Pet version
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_DOUBLE_ATTACK, 10);
    mob:addMod(MOD_ACC,225);
    mob:addMod(MOD_DEF,50);
    mob:addMod(MOD_ATT,100);
    mob:addMod(MOD_ACC,100);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob, target)
    mob:useMobAbility(475); -- Mijin_Gakure
end;


-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
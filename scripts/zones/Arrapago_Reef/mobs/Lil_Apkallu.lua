-----------------------------------
-- Area: Arrapago Reef
-- NPC:  Lil' Apkallu
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_ACC,200);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
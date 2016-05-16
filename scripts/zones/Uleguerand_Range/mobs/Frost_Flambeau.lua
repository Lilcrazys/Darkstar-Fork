-----------------------------------
-- Zone: I AM LOST! CALL SEARCH AND RESCUE, WE NEED HELICOPTORS!
--  NM:  WHO AM I?! I DON"T KNOW! I HAVE PERMA AMNESIA!
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_ADD_EFFECT,mob:getShortID());
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);

    -- addMod
    mob:addMod(MOD_DOUBLE_ATTACK, 30)
    mob:addMod(MOD_ATT, 80);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 10);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC, 950);
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
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
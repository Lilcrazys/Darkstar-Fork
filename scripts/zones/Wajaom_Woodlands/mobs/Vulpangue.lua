-----------------------------------
-- Area: Wajaom Woodlands
--  ZNM: Vulpangue
-- @pos -693.470, -7.500, -127.744
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_ATT,200);
    mob:addMod(MOD_STR,125);
    mob:addMod(MOD_DEF,75);
    mob:addMod(MOD_ACC,75);
    mob:addMod(MOD_MACC,500);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
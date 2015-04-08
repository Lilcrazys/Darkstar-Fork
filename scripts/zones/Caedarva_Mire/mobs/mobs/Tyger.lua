-----------------------------------
-- Area: Wajaom Woodlands
-- NPC:  Tinnin

-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN,100);
    mob:setMod(MOD_MACC,900);
    -- addMod
    mob:addMod(MOD_MATT,55);
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,80);
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DOUBLE_ATTACK, 30)
end;




-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
end;
-----------------------------------
-- Area: Temple of Uggalepih
-- NPC:  Sozu Rogberry
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);

    -- addMod
    mob:addMod(MOD_ACC,100);
    mob:addMod(MOD_ATT,150);
    mob:addMod(MOD_EVA,-150);
    mob:addMod(MOD_TRIPLE_ATTACK,15);
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
end

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    killer:addTitle(TALKS_WITH_TONBERRIES);

    kills = killer:getVar("EVERYONES_GRUDGE_KILLS");
    if(kills < 480) then
        killer:setVar("EVERYONES_GRUDGE_KILLS",kills + 1);
    end
end;
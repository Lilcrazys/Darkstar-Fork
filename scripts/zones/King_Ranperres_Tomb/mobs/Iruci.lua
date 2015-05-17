-----------------------------------
-- Area: King Ranperres Tomb
-- NPC:  Cemetery Cherry
-- @pos 33.000 0.500 -287.000 190
-----------------------------------
require("scripts/globals/status");
-----------------------------------
function onMobInitialize(mob)
	mob:setMobMod(MOBMOD_SIGHT_RANGE,30);
	mob:setMobMod(MOBMOD_SOUND_RANGE,30);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
	mob:setMod(MOD_REGAIN,33);
	mob:setMod(MOD_MATT,120);
	mob:setMod(MOD_MACC,2400);
	mob:setMod(MOD_DMGPHYS,20);
	mob:setMod(MOD_ACC,1400);
	mob:addMod(MOD_DOUBLE_ATTACK,35);
         mob:setMod(MOD_SLEEPRES,100);
         mob:setMod(MOD_SILENCERES,100);
         mob:setMod(MOD_STUNRES,25);
         mob:setMod(MOD_PARALYZERES,30);
         mob:setMod(MOD_REGEN, 50);
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
end;
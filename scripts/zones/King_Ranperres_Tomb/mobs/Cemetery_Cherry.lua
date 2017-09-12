-----------------------------------
-- Area: King Ranperres Tomb
--  NM:  Cemetery Cherry
-- !pos 33.000 0.500 -287.000 190
-----------------------------------

require("scripts/globals/titles");
require("scripts/globals/status");


-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE,30);
    mob:setMobMod(MOBMOD_SOUND_RANGE,30);

    -- addMod
    mob:addMod(MOD_STR,77);
    mob:addMod(MOD_INT,30);
    mob:addMod(MOD_MATT,400);
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_DEX,77);
    mob:addMod(MOD_DMGPHYS, 30);
    mob:addMod(MOD_ATT,412);
    mob:addMod(MOD_ACC,400);
    mob:addMod(MOD_EVA,132);
    mob:addMod(MOD_CRIT_DMG_INCREASE,15);
    mob:addMod(MOD_CRITHITRATE,22);
    mob:addMod(MOD_DOUBLE_ATTACK,35);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
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

function onMobDeath(mob, player, isKiller)
    player:addTitle(MON_CHERRY);
end;
-----------------------------------
-- Area: The Garden of Ru'Hmet
-- NPC:  Ix'aern (drk)
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
-----------------------------------
-- onMobInitialize
----------------------------------
function onMobInitialize(mob)
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_2HOUR_MULTI, 1);
end;
-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REFRESH, 100);
    mob:setMod(MOD_REGAIN, 10);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);


    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_MDEF,50);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local RR = mob:getLocalVar("RR");
    local RR_CHANCE = math.random(1,10);

        if (mob:getHPP() <= 5 and RR_CHANCE <=7 and RR == 0) then
            mob:setMobMod(MOD_RERAISE_III, 1);
            mob:setLocalVar("RR", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    mob:setLocalVar("RR", 0);
end;


-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SetServerVariable("[PH]Ix_aern_drk", 0); -- moved to onMobDespawn but need to confirm this exists
end;
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
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 150);
    mob:setMod(MOD_REGAIN, 15);
    mob:setMod(MOD_HASTE_ABILITY, 20);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_MACC,925);
    mob:setMod(MOD_MATT,100);
    mob:setMod(MOD_DOUBLE_ATTACK, 15);

    -- addMod
    mob:addMod(MOD_MDEF,50);
    mob:addMod(MOD_DEF,100);
    mob:addMod(MOD_ATT,75);
end;
-----------------------------------
-- onMobEngage Action
-----------------------------------

function onMobEngage(mob, target)
    SpawnMob(mob:getID()+1, 300):updateEnmity(target);
    SpawnMob(mob:getID()+2, 300):updateEnmity(target);
end;
-----------------------------------
-- onMobFight Action
-----------------------------------


function onMobFight(mob, target)
    local Ix_2hr_Used = 0;
    if (mob:getLocalVar("Ix_2hr") ~= nil) then
        Ix_2hr_Used = mob:getLocalVar("Ix_2hr");
    end

    if (mob:getHPP() <= 20) then
        if (Ix_2hr_Used == 1) then
            mob:useMobAbility(432);
            mob:setLocalVar("Ix_2hr", 2);
            mob:addMod(MOD_DEF,75);
            mob:addMod(MOD_ATT,75);
            mob:addMod(MOD_REGEN, 75);
            mob:addMod(MOD_REGAIN, 10);
        end
    elseif (mob:getHPP() <= 50) then
        if (Ix_2hr_Used == 0) then
            mob:useMobAbility(434);
            mob:setLocalVar("Ix_2hr", 1);
        end
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)
    DespawnMob(16916816);
    DespawnMob(16916817);
end;
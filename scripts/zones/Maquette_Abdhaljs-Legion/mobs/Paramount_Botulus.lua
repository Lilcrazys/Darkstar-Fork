-----------------------------------
-- Area: Legion
-- Paramount_Botulus
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/utils");
require("scripts/globals/spoofchat");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SUB_2HOUR, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 40);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_UFASTCAST, 55);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,125);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Paramount_Botulus_2hr_Used = mob:getLocalVar("Paramount_Botulus_2hr_Used");

    if (mob:getHPP() <= 10) then
        if (Paramount_Botulus_2hr_Used == 3) then
            mob:useMobAbility(691);
            mob:setLocalVar("Paramount_Botulus_2hr_Used", 4);
        elseif (Paramount_Botulus_2hr_Used == 4) then
            mob:useMobAbility(692);
            mob:setLocalVar("Paramount_Botulus_2hr_Used", 5);
        end
    elseif (mob:getHPP() <= 25) then
        if (Paramount_Botulus_2hr_Used == 2) then
            mob:useMobAbility(692);
            mob:setLocalVar("Paramount_Botulus_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 50) then
        if (Paramount_Botulus_2hr_Used == 1) then
            mob:useMobAbility(692);
            mob:setLocalVar("Paramount_Botulus_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 75) then
        if (Paramount_Botulus_2hr_Used == 0) then
            mob:useMobAbility(692);
            mob:setLocalVar("Paramount_Botulus_2hr_Used", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 300);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SpawnMob(mob:getID()-1) -- Spawns Paramount_Gallu
end;

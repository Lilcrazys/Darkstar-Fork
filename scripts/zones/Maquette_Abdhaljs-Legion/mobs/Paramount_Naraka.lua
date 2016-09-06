-----------------------------------
-- Area: Legion
-- Paramount_Naraka
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

    -- addMod
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 50);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_UFASTCAST, 25);
    mob:setMod(MOD_COUNTER, 10);
    mob:setMod(MOD_QUAD_ATTACK, 25);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- local stance = mob:getLocalVar("stance");  -- Stance 1 = Raksha, Stance 0 = Yaksha
    local Paramount_Naraka_2hr_Used = mob:getLocalVar("Paramount_Naraka_2hr_Used");

    if (mob:getHPP() <= 10) then
        if (Paramount_Naraka_2hr_Used == 2) then
            mob:useMobAbility(730); -- MK
            mob:setLocalVar("Paramount_Naraka_2hr_Used", 3);
        end
    elseif (mob:getHPP() <= 30) then
        if (Paramount_Naraka_2hr_Used == 1) then
            mob:useMobAbility(730); -- MK
            mob:setLocalVar("Paramount_Naraka_2hr_Used", 2);
        end
    elseif (mob:getHPP() <= 70) then
        if (Paramount_Naraka_2hr_Used == 0) then
            mob:useMobAbility(730); -- MK
            mob:setLocalVar("Paramount_Naraka_2hr_Used", 1);
        end
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 75);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local popBoss = true;
    local MobIDs = {17526852, 17526853, 17526854, 17526856};
    -- Paramount_Naraka 17526851

    for deezNuts, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526856);
    end
end;

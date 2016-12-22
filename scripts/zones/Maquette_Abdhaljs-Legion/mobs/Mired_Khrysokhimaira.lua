-----------------------------------
-- Area: Legion
-- Mired_Khrysokhimaira
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
    mob:addMod(MOD_ACC,225);
    mob:addMod(MOD_MDEF,65);
    mob:addMod(MOD_DEF,95);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,20);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Mired_Khrysokhimaira_2hr = 0;
    if (mob:getLocalVar("Mired_Khrysokhimaira_2hr") ~= nil) then
        Mired_Khrysokhimaira_2hr = mob:getLocalVar("Mired_Khrysokhimaira_2hr");
    end

    if (mob:getHPP() <= 15) then
        if (Mired_Khrysokhimaira_2hr == 1) then
            mob:useMobAbility(694); -- Invincible
            mob:setLocalVar("Mired_Khrysokhimaira_2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Mired_Khrysokhimaira_2hr == 0) then
            mob:useMobAbility(695); -- Blood Weapon
            mob:setLocalVar("Mired_Khrysokhimaira_2hr", 1);
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
    local MobIDs = {17526805, 17526806, 17526807, 17526808, 17526810, 17526811};
    -- Mired_Khrysokhimaira 17526809

    for Veiled, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526811);
    end
end;

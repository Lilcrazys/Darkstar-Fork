-----------------------------------
-- Area: Legion
-- Mired_Orthrus
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
    mob:addMod(MOD_DEF,115);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,25);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Mired_Orthrus_2hr = mob:getLocalVar("Mired_Orthrus_2hr");

    if (mob:getHPP() <= 15) then
        if (Mired_Orthrus_2hr == 1) then
            mob:useMobAbility(695); -- BW
            mob:setLocalVar("Mired_Orthrus_2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Mired_Orthrus_2hr == 0) then
            mob:useMobAbility(691); -- MF
            mob:setLocalVar("Mired_Orthrus_2hr", 1);
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
    local MobIDs = {17526805, 17526806, 17526807, 17526809, 17526810, 17526811};
    -- Mired_Orthrus 17526808

    for deezNuts, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526811);
    end
end;

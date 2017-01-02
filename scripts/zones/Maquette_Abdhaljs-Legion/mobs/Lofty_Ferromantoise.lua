-----------------------------------
-- Area: Legion
-- Lofty_Ferromantoise
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

    -- AddMod
    mob:addMod(MOD_MDEF,55);
    mob:addMod(MOD_DEF,75);
    mob:addMod(MOD_ACC,125);

    -- setMod
    mob:setMod(MOD_REGAIN,25);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_MACC,1425); -- Rebalance with addMod instead later...
    mob:setMod(MOD_MATT,120);  -- Rebalance with addMod instead later...
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local did2hr = mob:getLocalVar("did2hr");

    if (mob:getHPP() <= 15 and did2hr == 1) then
        mob:useMobAbility(692); -- CS
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 60 and did2hr == 0) then
        mob:useMobAbility(691); -- MF
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 50);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local popBoss = true;
    local MobIDs = {17526785, 17526786, 17526787, 17526788, 17526789, 17526791};
    -- Lofty_Ferromantoise 17526790

    for deezNuts, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526791); -- Lofty Harpeia
    end
end;

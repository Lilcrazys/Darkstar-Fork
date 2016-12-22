-----------------------------------
-- Area: Legion
-- Lofty_Elasmoth
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
    mob:addMod(MOD_DEF,75);

    -- setMod
    mob:setMod(MOD_REGAIN,25);
    mob:setMod(MOD_REGEN,35);
    mob:setMod(MOD_MACC,1425); -- Rebalance with addMod instead later...
    mob:setMod(MOD_MATT,110);  -- Rebalance with addMod instead later...
end

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)

end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local Lofty_Elasmoth_2hr = mob:getLocalVar("Lofty_Elasmoth_2hr");

    if (mob:getHPP() <= 15) then
        if (Lofty_Elasmoth_2hr == 1) then
            mob:useMobAbility(695); -- BW
            mob:setLocalVar("Lofty_Elasmoth_2hr", 2);
        end
    elseif (mob:getHPP() <= 60) then
        if (Lofty_Elasmoth_2hr == 0) then
            mob:useMobAbility(688); -- MS
            mob:setLocalVar("Lofty_Elasmoth_2hr", 1);
        end
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
    local MobIDs = {17526785, 17526786, 17526787, 17526789, 17526790, 17526791};
    -- Lofty_Elasmoth 17526788

    for deezNuts, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17526791);
    end
end;

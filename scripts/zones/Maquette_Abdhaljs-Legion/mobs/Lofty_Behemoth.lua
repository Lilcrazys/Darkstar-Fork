-----------------------------------
-- Area: Legion
-- Lofty_Behemoth
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_MAIN_2HOUR, 1);
    mob:setMobMod(MOBMOD_SIGHT_RANGE,20);
    mob:setMobMod(MOBMOD_SOUND_RANGE,20);

    -- setMod
    mob:setMod(MOD_REGAIN,15);
    mob:setMod(MOD_REGEN,25);
    mob:setMod(MOD_MACC,1425); -- Rebalance with addMod instead later...
    mob:setMod(MOD_MATT,100);  -- Rebalance with addMod instead later...
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
    local Lofty_Behemoth_2hr = mob:getLocalVar("Lofty_Behemoth_2hr");

    if (mob:getHPP() <= 10 and Lofty_Behemoth_2hr == 0) then
        mob:useMobAbility(688); -- MS
        mob:setLocalVar("Lofty_Behemoth_2hr", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 10);
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    SpawnMob(mob:getID()+3) -- Spawns Lofty_Elasmoth
end;

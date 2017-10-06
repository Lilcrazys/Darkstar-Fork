-----------------------------------
-- Area: Legion
--  MOB: Mired Mantis
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/titles");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE, 20);
    mob:setMobMod(MOBMOD_SOUND_RANGE, 20);
    mob:setMobMod(MOBMOD_HP_STANDBACK, 0);

    -- addMod
    mob:addMod(MOD_DEF,75);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 20);
    mob:setMod(MOD_REGAIN, 25);
    mob:setMod(MOD_HASTE_ABILITY, 10);
    mob:setMod(MOD_COUNTER, 20);
    mob:setMod(MOD_ACC,1325);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
    mob:addMod(MOD_MDEF,55);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local did2hr = mob:getLocalVar("did2hr");

    if (mob:getHPP() <= 10 and did2hr == 2) then
        mob:useMobAbility(690); -- HUNDRED FISTS
        mob:setLocalVar("did2hr", 3);
    elseif (mob:getHPP() <= 40 and did2hr == 1) then
        mob:useMobAbility(691); -- MANAFONT
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 75 and did2hr == 0) then
        mob:useMobAbility(688); -- MIGHTY STRIKES
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 150);
    if (mob:getID() == 17526811) then
        player:addTitle(SUBJUGATOR_OF_THE_MIRED);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    if (mob:getID() == 17526848) then
        local popWave2 = true;
        local MobIDs =
        {
            17526847, -- Lofty Harpeia
            -- 17526848, -- Mired Mantis
            17526849, -- Soaring Naraka
            17526850  -- Veiled Ironclad
        };

        for deezNuts, ID in pairs(MobIDs) do
            if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
                popWave2 = false;
            end
        end

        if (popWave2 == true) then
            SpawnMob(17527792); -- Auspicious_Entity : Time Extension
            SpawnMob(17527793); -- Auspicious_Entity : Restore
            SpawnMob(17526851); -- Paramount Harpeia
            SpawnMob(17526852); -- Paramount Mantis
            SpawnMob(17526853); -- Paramount Naraka
            SpawnMob(17526854); -- Paramount Ironclad
        end
    end
end;

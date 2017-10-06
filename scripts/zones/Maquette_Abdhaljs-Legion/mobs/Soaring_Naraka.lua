-----------------------------------
-- Area: Legion
-- Soaring_Naraka
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/magic");
require("scripts/globals/titles");
require("scripts/globals/utils");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE, 20);
    mob:setMobMod(MOBMOD_SOUND_RANGE, 20);
    mob:setMobMod(MOBMOD_HP_STANDBACK, 0);

    -- addMod
    mob:addMod(MOD_MDEF,45);
    mob:addMod(MOD_DEF,75);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGEN, 30);
    mob:setMod(MOD_REFRESH, 30);
    mob:setMod(MOD_REGAIN, 35);
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_UFASTCAST, 35);
    mob:setMod(MOD_QUAD_ATTACK, 25);
    mob:setMod(MOD_MACC,1425);
    mob:setMod(MOD_MATT,120);
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    -- local stance = mob:getLocalVar("stance");  -- Stance 1 = Raksha, Stance 0 = Yaksha
    local did2hr = mob:getLocalVar("did2hr");

    if (mob:getHPP() <= 10 and did2hr == 2) then
        mob:useMobAbility(730); -- Meikyo Shisui
        mob:setLocalVar("did2hr", 3);
    elseif (mob:getHPP() <= 30 and did2hr == 1) then
        mob:useMobAbility(691); -- Manafont
        mob:setLocalVar("did2hr", 2);
    elseif (mob:getHPP() <= 70 and did2hr == 0) then
        mob:useMobAbility(730); -- Meikyo Shisui
        mob:setLocalVar("did2hr", 1);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addCurrency("legion_point", 250);
    if (mob:getID() == 17526825) then
        player:addTitle(SUBJUGATOR_OF_THE_SOARING);
    end
end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    if (mob:getID() == 17526849) then
        local popWave2 = true;
        local MobIDs =
        {
            17526847, -- Lofty Harpeia
            17526848, -- Mired Mantis
            -- 17526849, -- Soaring Naraka
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

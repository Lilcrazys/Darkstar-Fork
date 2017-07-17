-----------------------------------
-- Area: Legion
--  MOB: Paramount_Mantis
-----------------------------------
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
-----------------------------------

function onMobInitialize(mob)
    -- setMobMod
    mob:setMobMod(MOBMOD_SIGHT_RANGE, 20);
    mob:setMobMod(MOBMOD_SOUND_RANGE, 20);
    mob:setMobMod(MOBMOD_HP_STANDBACK, 0);

    -- addMod
    mob:addMod(MOD_COUNTER, 20);
    mob:addMod(MOD_MACC, 400);
    mob:addMod(MOD_MATT, 50);
    mob:addMod(MOD_MDEF, 50);
    mob:addMod(MOD_ACC, 300);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_HASTE_ABILITY, 15);
    mob:setMod(MOD_UFASTCAST, 15);
    mob:setMod(MOD_REGAIN, 5);
    mob:setMod(MOD_REGEN, 25);

    -- Var
    mob:setLocalVar("mgTrigger", math.random(3,29));
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob, target)
    local didHF = mob:getLocalVar("didHF");
    local didMG = mob:getLocalVar("didMG");
    local mgTrigger = mob:getLocalVar("mgTrigger");

    if (mob:getHPP() <= mgTrigger and didMG == 0) then
        mob:useMobAbility(731); -- MIJIN GAKURE
        mob:setLocalVar("didMG", 1);
    elseif (mob:getHPP() <= 40 and didHF == 1) then
        mob:useMobAbility(690); -- HUNDRED FISTS
        mob:setLocalVar("didHF", 2);
    elseif (mob:getHPP() <= 75 and didHF == 0) then
        mob:useMobAbility(690); -- HUNDRED FISTS
        mob:setLocalVar("didHF", 1);
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
    local MobIDs =
    {
        17526851, -- Paramount Naraka
        17526852, -- Paramount Harpeia
        -- 17526853, -- Paramount Mantis
        17526854  -- Paramount Ironclad
    };

    for deezNuts, ID in pairs(MobIDs) do
        if (GetMobAction(ID) ~= ACTION_NONE and GetMobAction(ID) ~= ACTION_SPAWN) then
            popBoss = false;
        end
    end

    if (popBoss == true) then
        SpawnMob(17527794); -- Auspicious_Entity : 2hr reset
        SpawnMob(17526855); -- Paramount Gallu
        SpawnMob(17526856); -- Paramount Botulus
    end
end;

-----------------------------------
-- Area: Mamook
--  NM:  Gulool Ja Ja
-----------------------------------
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/zones/Mamook/MobIDs");
mixins = {require("scripts/mixins/job_special")};
require("scripts/globals/custom_trials");

-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MATT,75);
    mob:addMod(MOD_MACC,500);
    mob:addMod(MOD_ACC,250);
    mob:addMod(MOD_ATT,50);
    mob:addMod(MOD_DEF,50);
end;

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
    mob:setMod(MOD_DOUBLE_ATTACK, 20);
    mob:setMobMod(MOBMOD_DRAW_IN, 2);
end;

function onMobEngaged(mob,target)
    for i = GULOOL_JA_JA + 1, GULOOL_JA_JA + 4 do
        SpawnMob(i):updateEnmity(target);
    end
end;

function onMobFight(mob, target)

    if (mob:getBattleTime() % 15 < 2 and mob:getBattleTime() > 10) then
        if (not GetMobByID(GULOOL_JA_JA + 1):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 1):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 1):updateEnmity(target);
        elseif (not GetMobByID(GULOOL_JA_JA + 2):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 2):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 2):updateEnmity(target);
        elseif (not GetMobByID(GULOOL_JA_JA + 3):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 3):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 3):updateEnmity(target);
        elseif (not GetMobByID(GULOOL_JA_JA + 4):isSpawned()) then
            GetMobByID(GULOOL_JA_JA + 4):setSpawn(mob:getXPos()+math.random(1,5), mob:getYPos(), mob:getZPos()+math.random(1,5));
            SpawnMob(GULOOL_JA_JA + 4):updateEnmity(target);
        end
    end
    for i = GULOOL_JA_JA + 1, GULOOL_JA_JA + 4 do
        local pet = GetMobByID(i);
        if (pet:getCurrentAction() == ACTION_ROAMING) then
            pet:updateEnmity(target);
        end
    end
end;

function onMobDisengage(mob)
    for i = 1,4 do DespawnMob(GULOOL_JA_JA + i) end
end;

function onMobDeath(mob, player, isKiller)
    player:addTitle(SHINING_SCALE_RIFLER);
    for i = 1,4 do DespawnMob(GULOOL_JA_JA + i) end

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        local RND = math.random(1,1000);
        if (RND <= 100) then -- 10%
            player:addTreasure(10955, mob); -- Cuilinarian's Torque
        elseif (RND <= 300) then -- 20%
            player:addTreasure(20861, mob); -- Qalgwer
        else
            player:addTreasure(4023, mob); -- Snowsteel Ore
            player:addTreasure(4023, mob); -- Snowsteel Ore
        end
    end


    -- Custom Trial Check
    cTrialProgress(player, 3, "mythic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------
end;

function onMobDespawn(mob)
    for i = 1,4 do DespawnMob(GULOOL_JA_JA + i) end
    mob:setRespawnTime(math.random(75600,86400));   -- 21 to 24 hours
end;

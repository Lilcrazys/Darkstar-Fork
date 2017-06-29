-----------------------------------
-- Area: Valley of Sorrows
--  HNM: Adamantoise
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/custom_trials");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_ACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    -- setMod
    mob:setMod(MOD_REGAIN,33);
    mob:setMod(MOD_STUNRES, 25);
    mob:setMod(MOD_TERRORRES, 80);
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17301567):setStatus(STATUS_DISAPPEAR);
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    player:addTitle(TORTOISE_TORTURER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    -- Set server var for custom @command to check ToD
    SetServerVariable("Our_Adamantoise_ToD", os.time());

    -- Custom Trial Check
    cTrialProgress(player, 2, "relic");

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)
    local Adamantoise = mob:getID();
    local Aspidochelone = mob:getID()+1;
    local ToD = GetServerVariable("[POP]Aspidochelone");
    local kills = GetServerVariable("[PH]Aspidochelone");
    local popNow = (math.random(1,5) == 3 or kills > 6);

    if (LandKingSystem_HQ ~= 1 and ToD <= os.time() and popNow == true) then
        -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
        if (LandKingSystem_NQ == 0) then
            DeterMob(Adamantoise, true);
        end

        DeterMob(Aspidochelone, false);
        UpdateNMSpawnPoint(Aspidochelone);
        GetMobByID(Aspidochelone):setRespawnTime(math.random(21600,32400));
    else
        if (LandKingSystem_NQ ~= 1) then
            UpdateNMSpawnPoint(Adamantoise);
            mob:setRespawnTime(math.random(21600,32400));
            SetServerVariable("[PH]Aspidochelone", kills + 1);
        end
    end

    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17301567):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;

-----------------------------------
-- Area: Valley of Sorrows
--  HNM: Adamantoise
-----------------------------------
require("scripts/zones/Valley_of_Sorrows/MobIDs");
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/titles");
require("scripts/globals/custom_trials");

function onMobInitialize(mob)
    -- addMod
    mob:addMod(MOD_MACC,400);
    mob:addMod(MOD_ACC,400);
    mob:addMod(MOD_DOUBLE_ATTACK,15);
end;

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
        GetNPCByID(ADAMANTOISE_QM):setStatus(STATUS_DISAPPEAR);
    end
end;

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

function onMobDespawn(mob)
    local ToD = GetServerVariable("[POP]Aspidochelone");
    local kills = GetServerVariable("[PH]Aspidochelone");
    local popNow = (math.random(1,5) == 3 or kills > 6);

    if (LandKingSystem_HQ ~= 1 and ToD <= os.time() and popNow) then
        -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
        if (LandKingSystem_NQ == 0) then
            DisallowRespawn(ADAMANTOISE, true);
        end

        DisallowRespawn(ASPIDOCHELONE, false);
        UpdateNMSpawnPoint(ASPIDOCHELONE);
        GetMobByID(ASPIDOCHELONE):setRespawnTime(math.random(21600,32400));
    else
        if (LandKingSystem_NQ ~= 1) then
            UpdateNMSpawnPoint(ADAMANTOISE);
            mob:setRespawnTime(math.random(21600,32400));
            SetServerVariable("[PH]Aspidochelone", kills + 1);
        end
    end

    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(ADAMANTOISE_QM):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;

-----------------------------------
-- Area: Valley of Sorrows
--  HNM: Aspidochelone
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/titles");
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize Action
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
    mob:setMod(MOD_TERRORRES, 100);

    --[[ Custom (Relic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, RELIC, 3);
    end]]

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
    player:addTitle(ASPIDOCHELONE_SINKER);

    ------------------------------------
    -- Begin Custom Legion Code
    ------------------------------------

    if (isKiller == true) then
        if (math.random(1,1000) <= 66) then -- Hardcoded "this or this item" drop rate until implemented.
            player:addTreasure(20618); -- Sandung
        else
            player:addTreasure(18828); -- Oxossi Facon +1
        end
    end


    --[[ Custom (Relic) Trial Code
    if (cTrialItemEquipped(player) == true) then
        cTrialProgress(player, RELIC, 3);
    end]]

    ------------------------------------
    -- End Custom Legion Code
    ------------------------------------

end;

-----------------------------------
-- onMobDespawn
-----------------------------------

function onMobDespawn(mob)

    -- Set Aspidochelone's Window Open Time
    if (LandKingSystem_HQ ~= 1) then
        local wait = 72 * 360;
        SetServerVariable("[POP]Aspidochelone", os.time(t) + wait); -- 3 days
        if (LandKingSystem_HQ == 0) then -- Is time spawn only
            DeterMob(mob:getID(), true);
        end
    end

    -- Set Adamantoise's spawnpoint and respawn time (21-24 hours)
    if (LandKingSystem_NQ ~= 1) then
        Adamantoise = mob:getID()-1;
        SetServerVariable("[PH]Aspidochelone", 0);
        DeterMob(Adamantoise, false);
        UpdateNMSpawnPoint(Adamantoise);
        GetMobByID(Adamantoise):setRespawnTime(math.random(21600,32400));
    end

    if (LandKingSystem_NQ > 0 or LandKingSystem_HQ > 0) then
        GetNPCByID(17301567):updateNPCHideTime(FORCE_SPAWN_QM_RESET_TIME);
    end
end;

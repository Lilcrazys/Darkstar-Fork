-----------------------------------
--
-- Zone: Valley_of_Sorrows (128)
--
-----------------------------------
package.loaded["scripts/zones/Valley_of_Sorrows/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Valley_of_Sorrows/TextIDs");
require("scripts/zones/Valley_of_Sorrows/MobIDs");
require("scripts/globals/conquest");
require("scripts/globals/settings");
require("scripts/globals/zone");
-----------------------------------

function onInitialize(zone)
    --[[
    if (LandKingSystem_NQ ~= 1) then
        UpdateNMSpawnPoint(ADAMANTOISE);
        GetMobByID(ADAMANTOISE):setRespawnTime(math.random(900, 10800));
    end
    ]]
    -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
    if (LandKingSystem_HQ ~= 1
    and GetServerVariable("[POP]Aspidochelone") <= os.time(t)
    and GetServerVariable("[PH]Aspidochelone") > 6) then
        DisallowRespawn(17301538, false);
        UpdateNMSpawnPoint(17301538);
        GetMobByID(17301538):setRespawnTime(900, 10800); -- Aspidochelone
        if (LandKingSystem_NQ == 0) then
            DisallowRespawn(17301537, true);
        end
    else
        if (LandKingSystem_NQ ~= 1) then
            DisallowRespawn(17301537, false);
            UpdateNMSpawnPoint(17301537);
            GetMobByID(17301537):setRespawnTime(900, 10800); -- Adamantoise
            if (LandKingSystem_HQ == 0) then
                DisallowRespawn(17301538, true);
            end
        end
    end
end;

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

function onZoneIn(player,prevZone)
    local cs = -1;

    if (player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0) then
        player:setPos(45.25,-2.115,-140.562,0);
    end

    return cs;
end;

function onRegionEnter(player,region)
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

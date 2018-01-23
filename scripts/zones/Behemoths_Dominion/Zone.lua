-----------------------------------
--
-- Zone: Behemoths_Dominion (127)
--
-----------------------------------
package.loaded["scripts/zones/Behemoths_Dominion/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Behemoths_Dominion/TextIDs");
require("scripts/zones/Behemoths_Dominion/MobIDs");
require("scripts/globals/settings");
require("scripts/globals/zone");
-----------------------------------

function onInitialize(zone)
    --[[
    if (LandKingSystem_NQ ~= 1) then
        UpdateNMSpawnPoint(BEHEMOTH);
        GetMobByID(BEHEMOTH):setRespawnTime(math.random(900, 10800));
    end
    ]]
    -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
    if (LandKingSystem_HQ ~= 1
    and GetServerVariable("[POP]King_Behemoth") <= os.time(t)
    and GetServerVariable("[PH]King_Behemoth") > 6) then
        DisallowRespawn(17297441, false);
        UpdateNMSpawnPoint(17297441);
        GetMobByID(17297441):setRespawnTime(900, 10800); -- King Behemoth
        if (LandKingSystem_NQ == 0) then
            DisallowRespawn(17297440, true);
        end
    else
        if (LandKingSystem_NQ ~= 1) then
            DisallowRespawn(17297440, false);
            UpdateNMSpawnPoint(17297440);
            GetMobByID(17297440):setRespawnTime(900, 10800); -- Behemoth
            if (LandKingSystem_HQ == 0) then
                DisallowRespawn(17297441, true);
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
        player:setPos(358.134,24.806,-60.001,123);
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

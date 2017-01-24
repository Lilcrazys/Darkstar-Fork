-----------------------------------
--
-- Zone: Behemoths_Dominion (127)
--
-----------------------------------
package.loaded["scripts/zones/Behemoths_Dominion/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/zone");
require("scripts/zones/Behemoths_Dominion/TextIDs");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
    --[[
    if (LandKingSystem_NQ ~= 1) then
        SetRespawnTime(17297440, 900, 10800); -- Behemoth
    end
    ]]
    -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
    if (LandKingSystem_HQ ~= 1
    and GetServerVariable("[POP]King_Behemoth") <= os.time(t)
    and GetServerVariable("[PH]King_Behemoth") > 6) then
        DeterMob(17297441, false);
        SetRespawnTime(17297441, 900, 10800); -- King Behemoth
        if (LandKingSystem_NQ == 0) then
            DeterMob(17297440, true);
        end
    else
        if (LandKingSystem_NQ ~= 1) then
            DeterMob(17297440, false);
            SetRespawnTime(17297440, 900, 10800); -- Behemoth
            if (LandKingSystem_HQ == 0) then
                DeterMob(17297441, true);
            end
        end
    end
end;

-----------------------------------
-- onConquestUpdate
-----------------------------------

function onConquestUpdate(zone, updatetype)
    local players = zone:getPlayers();

    for name, player in pairs(players) do
        conquestUpdate(zone, player, updatetype, CONQUEST_BASE);
    end
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
    local cs = -1;
    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        player:setPos(358.134,24.806,-60.001,123);
    end
    return cs;
end;

-----------------------------------
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    --printf("CSID: %u",csid);
    --printf("RESULT: %u",option);
end;

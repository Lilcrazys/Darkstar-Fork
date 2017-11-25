-----------------------------------
--
-- Zone: Dragons_Aery (154)
--
-----------------------------------
package.loaded["scripts/zones/Dragons_Aery/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Dragons_Aery/TextIDs");
require("scripts/zones/Dragons_Aery/MobIDs");
require("scripts/globals/conquest");
require("scripts/globals/settings");
require("scripts/globals/zone");

-----------------------------------
-- onInitialize
-----------------------------------

function onInitialize(zone)
    --[[
    if (LandKingSystem_NQ ~= 1) then
        UpdateNMSpawnPoint(FAFNIR);
        GetMobByID(FAFNIR):setRespawnTime(math.random(900, 10800));
    end
    ]]
    -- 0 = timed spawn, 1 = force pop only, 2 = BOTH
    if (LandKingSystem_HQ ~= 1
    and GetServerVariable("[POP]Nidhogg") <= os.time(t)
    and GetServerVariable("[PH]Nidhogg") > 6) then
        DisallowRespawn(17408019, false);
        UpdateNMSpawnPoint(17408019);
        GetMobByID(17408019):setRespawnTime(900, 10800); -- Nidhogg
        if (LandKingSystem_NQ == 0) then
            DisallowRespawn(17408018, true);
        end
    else
        if (LandKingSystem_NQ ~= 1) then
            DisallowRespawn(17408018, false);
            UpdateNMSpawnPoint(17408018);
            GetMobByID(17408018):setRespawnTime(900, 10800); -- Fafnir
            if (LandKingSystem_HQ == 0) then
                DisallowRespawn(17408019, true);
            end
        end
    end
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
    local cs = -1;

    if ((player:getXPos() == 0) and (player:getYPos() == 0) and (player:getZPos() == 0)) then
        player:setPos(-60.006,-2.915,-39.501,202);
    end

    return cs;
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
-- onRegionEnter
-----------------------------------

function onRegionEnter(player,region)
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

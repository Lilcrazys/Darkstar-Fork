-----------------------------------
--
-- Zone: Walk_of_Echoes
--
-----------------------------------
require("scripts/globals/settings");
package.loaded["scripts/zones/Walk_of_Echoes/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Walk_of_Echoes/TextIDs");
-----------------------------------

function onInitialize(zone)
end;

function onZoneIn(player,prevZone)
    local cs = -1;

    if (prevZone ~= 182) then
        -- Player left WoE, wipe score..
        player:setVar("WoE_Score", 0);
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


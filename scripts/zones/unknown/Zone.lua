-----------------------------------
--
-- Zone: unknown
--
-- This zone is the pre-release technical demonstration area.
--
-----------------------------------
package.loaded["scripts/zones/unknown/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/unknown/TextIDs");
require("scripts/globals/settings");

-----------------------------------
--  onInitialize
-----------------------------------

function onInitialize(zone)
end;

-----------------------------------
-- onZoneIn
-----------------------------------

function onZoneIn(player,prevZone)
    local cs = -1;

    return cs;
end;

-----------------------------------
-- afterZoneIn
-----------------------------------

function afterZoneIn(player)
    if (player:getGMLevel() == 0) then
        player:PrintToPlayer("Dear player, the LegionDark devs would very much like to know HOW you landed here.");
        player:PrintToPlayer("Please report any information you have as soon as possible.");
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

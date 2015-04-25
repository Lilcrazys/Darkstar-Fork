-----------------------------------
--
-- Zone: Maquette Abdhaljs-Legion
--
-----------------------------------
package.loaded["scripts/zones/Maquette_Abdhaljs-Legion/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Maquette_Abdhaljs-Legion/TextIDs");

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
	local pos = player:getPos();

	if (pos.x == 0 and pos.y == 0 and pos.z == 0) then
		player:setPos(180, 12, -251, 0);
		-- player:setPos(player:getInstance():getEntryPos());
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
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
    -- if (csid == ?) then
        -- player:setPos(0,0,0,0,?);
    -- end
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onInstanceFailure
-----------------------------------
--[[
function onInstanceLoadFailed()
    return 61;
end;
]]
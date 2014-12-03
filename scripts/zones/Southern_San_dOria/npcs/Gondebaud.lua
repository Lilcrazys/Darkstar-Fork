-----------------------------------
-- Area: Southern Sandoria
-- NPC:  Gondebaud
-- @pos
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Southern_San_dOria/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if (player:hasKeyItem(492) and player:hasKeyItem(1550)) then
	player:startEvent(0x036);
	else
	player:addKeyItem(492);
	player:addKeyItem(1550);
	player:messageSpecial(KEYITEM_OBTAINED,492);
	player:messageSpecial(KEYITEM_OBTAINED,1550);
	player:startEvent(0x036); -- or 0x0001
	end
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

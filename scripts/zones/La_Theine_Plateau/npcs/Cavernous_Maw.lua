-----------------------------------
-- Area: Konschtat Highlands
-- NPC: Cavernous Maw
-- 
-- @zone 108
-- @pos 95.344, -69.080, -580.008
-----------------------------------
package.loaded["scripts/zones/La_Theine_Plateau/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/missions");
require("scripts/zones/La_Theine_Plateau/TextIDs");
require("scripts/globals/status");
require("scripts/globals/keyitems");
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    --local stone = TRAVERSER_STONE1;
	player:startEvent(0x00DA,1,1,1,1,1,1,1);
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
	if(csid == 0x00DA and option == 1) then
		player:setPos(-480,0,794,62,132);
	end
	
end;
-----------------------------------
-- Area: South Gustaberg
-- NPC: Cavernous Maw
-----------------------------------
package.loaded["scripts/zones/South_Gustaberg/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/South_Gustaberg/TextIDs");
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
	player:startEvent(914,1,1,1,1,1,1,1);
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
	if(csid == 914 and option == 1) then
		player:setPos(432, 0, 321, 125, 218);
	end
	
end;
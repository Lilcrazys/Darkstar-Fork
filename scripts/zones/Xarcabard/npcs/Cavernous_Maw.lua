-----------------------------------
-- NPC: Cavernous Maw
-----------------------------------
package.loaded["scripts/zones/Xarcabard/TextIDs"] = nil;
require("scripts/zones/Xarcabard/TextIDs");
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
	player:startEvent(204,1,1,1,1,1,1,1);
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
	if(csid == 204 and option == 1) then
		player:setPos(-240, -40, -520, 251, 253);
	end
	
end;
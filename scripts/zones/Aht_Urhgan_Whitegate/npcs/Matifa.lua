-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Matifa
-- Type: Standard NPC
-- !pos -10.583 -1 -8.820 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/quests");

-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
	local artsAndCrafts = player:getQuestStatus(AHT_URHGAN,ARTS_AND_CRAFTS);
	local artsAndCrafts_Matifa = player:getVar("QUEST_ARTSANDCRAFTS_MATIFA");

	if (artsAndCrafts == 1 and artsAndCrafts_Matifa ~= 1) then
		player:startEvent(0x0204);
	else
		player:startEvent(541);
	end
end;

function onEventUpdate(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
	if (csid == 0x0204) then
		player:setVar("QUEST_ARTSANDCRAFTS_MATIFA",1);
	end
end;


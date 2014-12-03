-----------------------------------
-- Area: Rolanberry Fields
-- NPC:  Saarlan
-- Legion starter NPC
-- @pos 242 24.395 468
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/teleports");
require("scripts/globals/missions");
require("scripts/globals/campaign");
require("scripts/globals/shop");
require("scripts/zones/Rolanberry_Fields/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (trade:getGil() == 360000 and trade:getItemCount() == 1) then
	    if (player:hasKeyItem(LEGION_TOME_PAGE_MAXIMUS)) then
		    player:showText(npc,LEGION_ALREADY_HAVE_KEYITEM,LEGION_TOME_PAGE_MAXIMUS);	
	else		
		player:tradeComplete();
		player:showText(npc,LEGION_KEYITEM_GET);
        player:addKeyItem(LEGION_TOME_PAGE_MAXIMUS);
		player:messageSpecial(KEYITEM_OBTAINED,LEGION_TOME_PAGE_MAXIMUS);
		end
    end
	if (trade:getGil() == 180000 and trade:getItemCount() == 1) then
	    if (player:hasKeyItem(LEGION_TOME_PAGE_MINIMUS)) then
		    player:showText(npc,LEGION_ALREADY_HAVE_KEYITEM,LEGION_TOME_PAGE_MINIMUS);
	else		
	    player:tradeComplete();
		player:showText(npc,LEGION_KEYITEM_GET);
    	player:addKeyItem(LEGION_TOME_PAGE_MINIMUS);
		player:messageSpecial(KEYITEM_OBTAINED,LEGION_TOME_PAGE_MINIMUS);
		end
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local legion = player:getQuestStatus(JEUNO,LEGION);
    --local points = player:getVar(legion_point);
    if((legion == QUEST_AVAILABLE)) then
	   player:startEvent(0x1F44,0,LEGION);  
    elseif((legion == QUEST_ACCEPTED)) then
	   gil = player:getGil();
	   player:PrintToPlayer("********************Saarlan will trade you the Keyitem of Choice when you trade the correct amount of Gil required for your choice.********************");
	   player:startEvent(0x1F45,gil);
    end
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
--print("CSID:",csid);
--print("RESULT:",option);
    if(csid == 0x1F44) then
	   if(player:getQuestStatus(JEUNO,LEGION) == QUEST_AVAILABLE) then
          player:addQuest(JEUNO,LEGION);
	   end
	end
end;
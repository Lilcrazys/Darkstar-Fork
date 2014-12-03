-----------------------------------
-- Area: Rolanberry Fields	
-- NPC:  Legion Tome
-- Teleports Players to Rolanberry_Fields_S
-- @pos 238 24 469 110
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/teleports");
require("scripts/globals/missions");
require("scripts/globals/campaign");
require("scripts/zones/Rolanberry_Fields/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

    if (trade:getItem() == 3528 and trade:getItemCount() == 1) then
	    player:tradeComplete();
	    player:startEvent(0x1F49);
    end

end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

    local zone = player:getZone(185);
	
    if((ALLIANCE_LEADER == zone) == true) then
	   player:startEvent(0x1F49);
    else
        player:messageSpecial(NOTHING_HAPPENS);
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
	if(csid == 0x1F49) then
	   player:setPos(180, 11, -259, 63, 183);
	end
end;


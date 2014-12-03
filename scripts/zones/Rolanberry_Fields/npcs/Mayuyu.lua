-----------------------------------
-- Area: Rolanberry Fields
-- NPC:  Mayuyu
-- Legion Pass giver
-- @pos 240 24.399 468
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
    
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function onTrigger(player,npc)
	local item = 3528;
	local TOME1 = 1453;
	local TOME2 = 1458;
    -- setSignature(EncodedString);
	if(player:hasItem(item)) then
 	   player:showText(npc,LEGION_PASS_GOT);
	elseif(player:hasKeyItem(TOME1)) then
       player:showText(npc,LEGION,item);
	   player:addItem(item);
       player:messageSpecial(ITEM_OBTAINED,item); 
	elseif(player:hasKeyItem(TOME2)) then
       player:showText(npc,LEGION,item);
	   player:addItem(item);
       player:messageSpecial(ITEM_OBTAINED,item);
	else
       player:showText(npc,LEGION_NO_KEYITEM);
	end
end;
--:setSignature()
-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--print("CSID:",csid);
--print("RESULT:",option);		
end;
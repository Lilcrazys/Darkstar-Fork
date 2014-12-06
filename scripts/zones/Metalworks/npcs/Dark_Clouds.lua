-----------------------------------
-- Area: Metalworks
-- NPC:  Dark Clouds
-- Type: Augment NPC
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Metalworks/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/status");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	-- local ITEM = trade:getid();
	-- if (trade:hasItemQty(ITEM,1)) and (trade:getItemCount() == 1) then
		-- SpoofSay(npc:getID(),player:getID(),"Wow who sold you this piece of cra... err fine item.");
		-- SpoofSay(npc:getID(),player:getID(),"Anyway..., ill need a donation, the higher the donation the better the reward.");
		-- SpoofSay(npc:getID(),player:getID(),"Lets start at say, hmm.. 1,000 Gil for the first tier 10,000 for the second tier and finally 25,000 for my special service.");
		-- SpoofSay(npc:getID(),player:getID(),"Trade me the item along with your donation and I'll get to work.");
	-- end
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	-- SpoofEmote(npc:getID(),player:getID(),"Grumbles to himself.");
	-- SpoofSay(npc:getID(),player:getID(),"Oh Hey there, so the boss told me to help you guy's out.");
	-- SpoofSay(npc:getID(),player:getID(),"He told me that I have to make our adventures happy, pshhh.");
	-- SpoofSay(npc:getID(),player:getID(),"Anyway trade me an item of armour or a weapon and I'll see if I can improve it for you.");
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
end;




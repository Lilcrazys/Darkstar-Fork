-----------------------------------
-- Area: Aht Urhgan Whitegate
-- NPC: Nyzul exchange box
-- Standard Trade NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/spoofchat");
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    ----------------------------Askar-Phorcys-----------------------------------
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(16106,1) and trade:getItemCount() == 9) then                 --head
        npc:AnimationSub(5);
		player:addItem(10901);
		player:messageSpecial(ITEM_OBTAINED,10901);
		player:tradeComplete();
        npc:hideNPC(1);
	end
	if (trade:hasItemQty(4024,12) and trade:hasItemQty(14568,1) and trade:getItemCount() == 13) then   			   -- body
		npc:AnimationSub(5);
        player:addItem(10474);
		player:messageSpecial(ITEM_OBTAINED,10474);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(14983,1) and trade:getItemCount() == 9) then 					--hands
		npc:AnimationSub(5);
        player:addItem(10523);
		player:messageSpecial(ITEM_OBTAINED,10523);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(15647,1) and trade:getItemCount() == 9) then 					--legs
		npc:AnimationSub(5);
        player:addItem(10554);
		player:messageSpecial(ITEM_OBTAINED,10554);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(15733,1) and trade:getItemCount() == 9) then 					--feet
		npc:AnimationSub(5);
        player:addItem(10620);
		player:messageSpecial(ITEM_OBTAINED,10620);
		player:tradeComplete();
	end
----------------------------Denali-Thaumas------------------------------------
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(16107,1) and trade:getItemCount() == 9) then					--head
		npc:AnimationSub(5);
        player:addItem(10906);
		player:messageSpecial(ITEM_OBTAINED,10906);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,12) and trade:hasItemQty(14569,1) and trade:getItemCount() == 13) then				--body
		npc:AnimationSub(5);
        player:addItem(10479);
		player:messageSpecial(ITEM_OBTAINED,10479);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(14984,1) and trade:getItemCount() == 9) then					--hands
		npc:AnimationSub(5);
        player:addItem(10528);
		player:messageSpecial(ITEM_OBTAINED,10528);
		player:tradeComplete();
	end	
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(15648,1) and trade:getItemCount() == 9) then 					--legs
		npc:AnimationSub(5);
        player:addItem(10559);
		player:messageSpecial(ITEM_OBTAINED,10559);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(15734,1) and trade:getItemCount() == 9) then					--feet
		npc:AnimationSub(5);
        player:addItem(10625);
		player:messageSpecial(ITEM_OBTAINED,10625);
		player:tradeComplete();
	end
----------------------------Goliard-Nares------------------------------------	
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(16108,1) and trade:getItemCount() == 9) then					--head
		npc:AnimationSub(5);
        player:addItem(10911);
		player:messageSpecial(ITEM_OBTAINED,10911);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,12) and trade:hasItemQty(14570,1) and trade:getItemCount() == 13) then				--body
		npc:AnimationSub(5);
        player:addItem(10484);
		player:messageSpecial(ITEM_OBTAINED,10484);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(14985,1) and trade:getItemCount() == 9) then 					--hands
		npc:AnimationSub(5);
        player:addItem(10533);
		player:messageSpecial(ITEM_OBTAINED,10533);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(15649,1) and trade:getItemCount() == 9) then 					--legs
		npc:AnimationSub(5);
        player:addItem(10564);
		player:messageSpecial(ITEM_OBTAINED,10564);
		player:tradeComplete();
	end
	if (trade:hasItemQty(4024,8) and trade:hasItemQty(15735,1) and trade:getItemCount() == 9) then 					--feet
		npc:AnimationSub(5);
        player:addItem(10630);
		player:messageSpecial(ITEM_OBTAINED,10630);
		player:tradeComplete();
	end	
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    
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




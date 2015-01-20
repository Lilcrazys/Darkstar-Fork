-----------------------------------
-- Area: Aht Urhgan Whitegate
-- NPC: SALVAGE +1 exchange box
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
    -------------------------------------------------------SALVAGE +1-----------------------------------------------------------

	----------------------------Ares-------------------------------------

	if (trade:hasItemQty(16084,1) and trade:hasItemQty(27658,1) and trade:getItemCount() == 2) then 					--head
        player:addItem(27648);
		player:messageSpecial(ITEM_OBTAINED,27648);
		player:tradeComplete();
        npc:AnimationSub(5);
	end
	if (trade:hasItemQty(14546,1) and trade:hasItemQty(27798,1) and trade:getItemCount() == 2) then 					--body
		npc:AnimationSub(5);
        player:addItem(27788, 1);
		player:messageSpecial(ITEM_OBTAINED,27788);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14961,1) and trade:hasItemQty(27938,1) and trade:getItemCount() == 2) then 					--hands
		npc:AnimationSub(5);
        player:addItem(27928, 1);
		player:messageSpecial(ITEM_OBTAINED,27928);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15625,1) and trade:hasItemQty(28081,1) and trade:getItemCount() == 2) then 					--legs
		npc:AnimationSub(5);
        player:addItem(28071, 1);
		player:messageSpecial(ITEM_OBTAINED,28071);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15711,1) and trade:hasItemQty(28218,1) and trade:getItemCount() == 2) then 					--feet
		npc:AnimationSub(5);
        player:addItem(28208, 1);
		player:messageSpecial(ITEM_OBTAINED,28208);
		player:tradeComplete();
	end
----------------------------Usukane-------------------------------------
	if (trade:hasItemQty(16092,1) and trade:hasItemQty(27660,1) and trade:getItemCount() == 2) then 					--head
		npc:AnimationSub(5);
        player:addItem(27650, 1);
		player:messageSpecial(ITEM_OBTAINED,27650);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14554,1) and trade:hasItemQty(27800,1) and trade:getItemCount() == 2) then 					--body
		npc:AnimationSub(5);
        player:addItem(27790, 1);
		player:messageSpecial(ITEM_OBTAINED,27790);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14969,1) and trade:hasItemQty(27940,1) and trade:getItemCount() == 2) then 					--hands
		npc:AnimationSub(5);
        player:addItem(27930, 1);
		player:messageSpecial(ITEM_OBTAINED,27930);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15633,1) and trade:hasItemQty(28083,1) and trade:getItemCount() == 2) then 					--legs
		npc:AnimationSub(5);
        player:addItem(28073, 1);
		player:messageSpecial(ITEM_OBTAINED,28073);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15719,1) and trade:hasItemQty(28220,1) and trade:getItemCount() == 2) then 					--feet
		npc:AnimationSub(5);
        player:addItem(28210, 1);
		player:messageSpecial(ITEM_OBTAINED,28210);
		player:tradeComplete();
	end
----------------------------Skadi-------------------------------------
	if (trade:hasItemQty(16088,1) and trade:hasItemQty(27659,1) and trade:getItemCount() == 2) then 					--head
		npc:AnimationSub(5);
        player:addItem(27649, 1);
		player:messageSpecial(ITEM_OBTAINED,27649);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14550,1) and trade:hasItemQty(27799,1) and trade:getItemCount() == 2) then 					--body
		npc:AnimationSub(5);
        player:addItem(27789, 1);
		player:messageSpecial(ITEM_OBTAINED,27789);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14965,1) and trade:hasItemQty(27939,1) and trade:getItemCount() == 2) then 					--hands
		npc:AnimationSub(5);
        player:addItem(27929, 1);
		player:messageSpecial(ITEM_OBTAINED,27929);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15629,1) and trade:hasItemQty(28082,1) and trade:getItemCount() == 2) then 					--legs
		npc:AnimationSub(5);
        player:addItem(28072, 1);
		player:messageSpecial(ITEM_OBTAINED,28072);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15715,1) and trade:hasItemQty(28219,1) and trade:getItemCount() == 2) then 					--feet
		npc:AnimationSub(5);
        player:addItem(28209, 1);
		player:messageSpecial(ITEM_OBTAINED,28209);
		player:tradeComplete();
	end
----------------------------Morrigans-------------------------------------
	if (trade:hasItemQty(16100,1) and trade:hasItemQty(27662,1) and trade:getItemCount() == 2) then 					--head
		npc:AnimationSub(5);
        player:addItem(27652, 1);
		player:messageSpecial(ITEM_OBTAINED,27652);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14562,1) and trade:hasItemQty(27802,1) and trade:getItemCount() == 2) then 					--body
		npc:AnimationSub(5);
        player:addItem(27792, 1);
		player:messageSpecial(ITEM_OBTAINED,27792);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14977,1) and trade:hasItemQty(27942,1) and trade:getItemCount() == 2) then 					--hands
		npc:AnimationSub(5);
        player:addItem(27932, 1);
		player:messageSpecial(ITEM_OBTAINED,27932);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15641,1) and trade:hasItemQty(28085,1) and trade:getItemCount() == 2) then 					--legs
		npc:AnimationSub(5);
        player:addItem(28075, 1);
		player:messageSpecial(ITEM_OBTAINED,28075);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15727,1) and trade:hasItemQty(28222,1) and trade:getItemCount() == 2) then 					--feet
		npc:AnimationSub(5);
        player:addItem(28212, 1);
		player:messageSpecial(ITEM_OBTAINED,28212);
		player:tradeComplete();
	end
----------------------------Mardukes-------------------------------------
	if (trade:hasItemQty(160962,1) and trade:hasItemQty(27651,1) and trade:getItemCount() == 2) then 					--head
		npc:AnimationSub(5);
        player:addItem(27651, 1);
		player:messageSpecial(ITEM_OBTAINED,27651);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14558,1) and trade:hasItemQty(27801,1) and trade:getItemCount() == 2) then 					--body
		npc:AnimationSub(5);
        player:addItem(27791, 1);
		player:messageSpecial(ITEM_OBTAINED,27791);
		player:tradeComplete();
	end
	if (trade:hasItemQty(14973,1) and trade:hasItemQty(27941,1) and trade:getItemCount() == 2) then 					--hands
		npc:AnimationSub(5);
        player:addItem(27931, 1);
		player:messageSpecial(ITEM_OBTAINED,27931);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15637,1) and trade:hasItemQty(28084,1) and trade:getItemCount() == 2) then 					--legs
		npc:AnimationSub(5);
        player:addItem(28074, 1);
		player:messageSpecial(ITEM_OBTAINED,28074);
		player:tradeComplete();
	end
	if (trade:hasItemQty(15723,1) and trade:hasItemQty(28221,1) and trade:getItemCount() == 2) then 					--feet
		npc:AnimationSub(5);
        player:addItem(28211, 1)
		player:messageSpecial(ITEM_OBTAINED,28211);
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




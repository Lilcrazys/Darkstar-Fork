-----------------------------------
-- Area: Western Abdoulin
-- NPC: Ledericus  BLM Spel Merchant
-- Standard Merchant NPC
-----------------------------------

-----------------------------------


require("scripts/globals/shop");

-----------------------------------
-- onTrade Action
-----------------------------------


function onTrade(player,npc,trade)

	if (trade:getItemCount() == 1 and trade:hasItemQty(5082,1) == true) then
		player:tradeComplete();
		player:addSpell(474);    	--Learns Cura II
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(5083,1) == true) then
		player:tradeComplete();
		player:addSpell(475);    	--Learns Cura III
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(4619,1) == true) then
		player:tradeComplete();
		player:addSpell(11);		--Learns Curaga V
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

player:showText(npc,8860);

stock = {
		5083, 9638259,		--Scroll of Cura III
		4619, 12234554,		--Scroll of Curaga V
		5082, 9596717, 		-- Scroll of Cura II
		15669,189739250,	--Duelists Boots +1
		--4851, 35756975,		--Scroll of Meteor



 }
Shop(player, STATIC, stock);
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

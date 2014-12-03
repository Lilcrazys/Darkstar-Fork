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

	if (trade:getItemCount() == 1 and trade:hasItemQty(4851,1) == true) then
		player:tradeComplete();
		player:addSpell(218);    	--Learns Meteor
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(4891,1) == true) then
		player:tradeComplete();
		player:addSpell(497);		--Learns Blizzaja
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(4827,1) == true) then
		player:tradeComplete();
		player:addSpell(219);    	--Learns Comet
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(4776,1) == true) then
		player:tradeComplete();
		player:addSpell(168);    	--Learns Thunder V
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(4894,1) == true) then
		player:tradeComplete();
		player:addSpell(500);    	--Learns Thundaja
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(4889,1) == true) then
		player:tradeComplete();
		player:addSpell(365);    	--Learns Breakga
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

player:showText(npc,8860);

stock = {
		4776, 19638259,		--Scroll of Thunder V
		4827, 22345549,		--Scroll of Comet
		4891, 125967173, 	-- Scroll of Blizzaja
		4894, 134739250,	--Scroll of Thundaja
		4851, 35756975,		--Scroll of Meteor
		4889, 157420420,	--Scroll of Breakga



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

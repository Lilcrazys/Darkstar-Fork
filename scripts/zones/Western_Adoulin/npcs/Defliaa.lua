-----------------------------------
-- Area: Western Abdoulin
-- NPC: Defliaa
-- Standard Merchant NPC
-----------------------------------

-----------------------------------


require("scripts/globals/shop");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

player:showText(npc,8724);

stock = {
    5167,6800,	    --Coeurl Sub +1
	4523,3200,	--Melon Pie +1
	5889,19440,	--Stuffed Oitaru
	5885,18900,	--Saltena
	4396,280,	--Sausage Roll
	4356,200,	--White Bread
	5687,1800,	--Cheese Sandwich +1
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

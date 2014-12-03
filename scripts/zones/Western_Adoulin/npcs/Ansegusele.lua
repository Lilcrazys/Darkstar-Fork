-----------------------------------
-- Area: Western Abdoulin
-- NPC: Ansegusele
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

player:showText(npc,8723);

stock = {
    4363,44,	    --Faerie Apple
	4388,44,	--Eggplant
	4444,24,	--Rarrab Tail
	5921,240,	--Choc. Rarab Tail
	4468,80,	--Pamamas
	4389,32,		--San d'Orian carrot
	 630,96,		--Ogre pumpkin
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

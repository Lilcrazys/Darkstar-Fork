----------------------------------------------------------------------------------
-- Porter Moogle Lower Jeuno
-- Custom teleport to Abdoulin
-- @pos -17 0 13  245
----------------------------------------------------------------------------------


require("scripts/globals/settings");
require("scripts/globals/teleports");
require("scripts/globals/keyitems");

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	if(player:hasKeyItem(2156)) and (player:hasKeyItem(2158)) then
		player:setPos(367, 0, 188, 242, 261);	--It will let you teleport to Adoulin...
	else
	player:showText( npc, 9241 );
	--player:showText( npc, 9243 );
	end
end;



-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	if (trade:getItemCount() == 1 and trade:hasItemQty(0x889,1) == true) then
		player:tradeComplete();
		player:showText( npc, 9246 );
		player:setPos(-70, -6, -70, 66, 50);
	end
	if (player:hasKeyItem(2155) and trade:hasItemQty(0x88B,1) == true) then
		player:tradeComplete();
		player:showText( npc, 9246 );
		player:setPos(4, 0, -4, 24, 256);
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
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);

end;

----------------------------------------------------------------------------------
-- Waypoint
-- Abdoulin teleport location
-- @pos 4 0 -4 256
----------------------------------------------------------------------------------

require("scripts/globals/settings");
require("scripts/globals/teleports");


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:showText( npc, 9260 );
	--player:showText( npc, 9243 );
end;



-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

	if (trade:getItemCount() == 1 and trade:hasItemQty(0x889,1) == true) then
		player:showText( npc, 9246 );
		player:setPos(-17, 0, 13, 24, 245); --Silverpiece to Jeuno
	end
	if (trade:getItemCount() == 1 and trade:hasItemQty(0x88B,1) == true) then
		player:showText( npc, 9246 );
		player:setPos(114, 0, -8, 5, 231);  --Goldpiece to Whitegate
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

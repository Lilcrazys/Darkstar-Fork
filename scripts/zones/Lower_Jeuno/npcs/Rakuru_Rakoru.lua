--------------------------------------------------------------
--Rakuru-Rakoru
--Lower Jeuno
-- Adds all BLU spells
--------------------------------------------------------------




-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if (trade:getItemCount() == 1 and trade:hasItemQty(2331,1) == true) then
		player:tradeComplete();
	-- Adds all BLU spells
		player:addSpell(513);
		player:addSpell(515);
		player:addSpell(517);
		player:addSpell(518);
		-- Spells 519 to 743
		z = 519;
		while z <= 743 do
			player:addSpell(z);
			z = z + 1;
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
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("CSID: %u",csid);
	-- printf("RESULT: %u",option);
end;



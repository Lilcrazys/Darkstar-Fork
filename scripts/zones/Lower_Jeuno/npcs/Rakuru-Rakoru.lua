--------------------------------------------------------------
--Rakuru-Rakoru
--Lower Jeuno
-- Adds all BLU spells or SMN savatars
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
	end

	if (trade:getItemCount() == 1 and trade:hasItemQty(1440,1) == true) then
		player:tradeComplete();
	-- Adds all BLU spells
		player:addSpell(289);
		player:addSpell(288);
		player:addSpell(290);
		player:addSpell(291);
		-- Spells 292 to 306
		z = 291;
		while z <= 306 do
			player:addSpell(z);
			z = z + 1;
		end
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



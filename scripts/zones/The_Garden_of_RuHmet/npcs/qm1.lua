--------------------------------------------------------------
--qm1
--Garden Of Ru'Hmet
-- spawns Jailer of Fortitude
--------------------------------------------------------------




-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if (trade:getItemCount() == 12 and trade:hasItemQty(1872,12) == true) then
		player:tradeComplete();
		SpawnMob('16921015');
		player:setPos(-434.1, -0.5, 697.849);

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



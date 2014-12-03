----------------------------------------------------------------
-- Darcia
-- Lower Jeuno
-- Seekers Of Adoulin Start npc.
-- @pos -36 -1 -14 245
----------------------------------------------------------------
require("scripts/globals/keyitems");
require("scripts/globals/settings");
require("scripts/globals/missions");

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

	if(player:hasKeyItem(2157)) then
		player:showText(npc,7775);	--It will let you teleport to Adoulin...
	--else
	--if(player:hasKeyItem(2156))  then	--Adoulin Charter Permit
	--	player:showText( npc,10209);	--There is one more thing. Take this with you.
	--	player:addKeyItem(2158);		--Temporary Geomagnet
	--	player:messageSpecial(KEYITEM_OBTAINED,2158);
	--	player:showText(npc,10210);	--It will let you teleport to Adoulin...
	else
		if(player:hasKeyItem(2156))  then	--Adoulin Charter Permit
		player:startEvent(3);
	else
		player:showText(npc,10110);	--..
	end
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
	if(csid == 3) then
	player:addKeyItem(2157);   	-- Obtained Pioneer's Badge
	player:messageSpecial(6382,2157); --Pioneer's Badge
	end
end;

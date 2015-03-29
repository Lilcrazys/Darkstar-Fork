-----------------------------------
-- Area: Aht Urhgan Whitegate
-- NPC:  Ryo
-- Type: ZNM
-- @pos -127.086 0.999 22.693 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/besieged");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	if (trade:getGil() >= 10) then
		player:addCurrency("zeni_point", trade:getGil() /10);
		player:delGil(trade:getGil()); -- we don't use tradeComplete() for this.
	else
		player:SpoofChatPlayer( "I am sorry but at the current exchange rate 1 zeni is worth 10 gil.", MESSAGE_SAY, npc:getID() );
	end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	-- player:startEvent(0x0391);
	-- player:SpoofChatPlayer( "Master Sanraku will only trade in the Far Eastern currency of our homeland, called zeni. ", MESSAGE_SAY, npc:getID() );
	-- The spoofs crash if both these lines are sent..But they work fine separately. WTF.
	player:SpoofChatPlayer( "Worry not, I will covert your gil to zeni at the current exchange rate of 10 gil to 1 zeni. ", MESSAGE_SAY, npc:getID() );
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
	-- printf("updateCSID: %u",csid);
	-- printf("updateRESULT: %u",option);
	if(option == 300) then
		player:updateEvent(player:getCurrency("zeni_point"),0);
	else
		player:updateEvent(0,0);
	end
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
	-- printf("finishCSID: %u",csid);
	-- printf("finishRESULT: %u",option);
end;
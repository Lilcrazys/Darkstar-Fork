-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Ryo
-- Type: ZNM assistant
-- !pos -127.086 0.999 22.693 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/besieged");
require("scripts/globals/msg");

-----------------------------------

function onTrade(player,npc,trade)
    if (trade:getGil() >= 10) then
        if (trade:getGil() % 10 == 0) then
            local msgText = string.format("exchanges your %i gil for %i zeni. ", trade:getGil(), trade:getGil() *0.1);
            player:addCurrency("zeni_point", trade:getGil() *0.1);
            player:delGil(trade:getGil()); -- we don't use tradeComplete() for this.
            player:PrintToPlayer(msgText, chatType.EMOTION, npc:getName());
        else
            player:PrintToPlayer("Please trade me amounts that are multiples of 10. ", chatType.SAY, npc:getName());
        end
    else
        player:PrintToPlayer("I am sorry but at the current exchange rate 1 zeni is worth 10 gil. ", chatType.SAY, npc:getName());
    end
end;

function onTrigger(player,npc)
    --[[
    player:startEvent(913);
    ]]
    player:PrintToPlayer("Master Sanraku will only trade in the Far Eastern currency of our homeland, called zeni. ", chatType.SAY, npc:getName());
    player:PrintToPlayer("Worry not, I will covert your gil to zeni at the current exchange rate of 10 gil to 1 zeni. ", chatType.SAY, npc:getName());
end;

function onEventUpdate(player,csid,option)
    -- printf("updateCSID: %u",csid);
    -- printf("updateRESULT: %u",option);
    if (option == 300) then
        player:updateEvent(player:getCurrency("zeni_point"),0);
    else
        player:updateEvent(0,0);
    end
end;

function onEventFinish(player,csid,option)
    -- printf("finishCSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;
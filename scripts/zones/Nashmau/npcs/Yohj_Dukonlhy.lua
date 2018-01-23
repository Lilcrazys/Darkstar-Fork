-----------------------------------
-- Area: Nashmau
--  NPC: Yohj Dukonlhy
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Nashmau/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Nashmau/TextIDs");
require("scripts/globals/teleports");
require("scripts/globals/settings");
require("scripts/globals/msg");
-----------------------------------

function onTrade(player,npc,trade)
    if (TRAVEL_SKIP >= 1) then
        if (trade:getGil() >= TRAVEL_SKIP and trade:getItemCount() == 1) then
            player:SpoofMsg(string.format("eye's the %d gil.. ", TRAVEL_SKIP), npc, chatType.EMOTION, nil);
            player:SpoofMsg("Well..I guess I can let you aboard the express freight Vessel.. ", npc, chatType.SAY, nil);
            player:delGil(TRAVEL_SKIP);
            -- player:setPos(12,2,140,64,50);
            player:addStatusEffectEx(EFFECT_COMMUTE,0,COMMUTE.SHIP_TO_WHITEGATE_N,0,2);
        end
    end
end;

function onTrigger(player,npc)
   -- Based on scripts/zones/Mhaura/Dieh_Yamilsiah.lua
   local timer = 1152 - ((os.time() - 1009810800)%1152);
   local direction = 0; -- Arrive, 1 for depart
   local waiting = 431; -- Offset for Nashmau

    if (timer <= waiting) then
      direction = 1; -- Ship arrived, switch dialog from "arrive" to "depart"
   else
      timer = timer - waiting; -- Ship hasn't arrived, subtract waiting time to get time to arrival
    end

   player:startEvent(231,timer,direction);
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;
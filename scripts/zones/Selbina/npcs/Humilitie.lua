-----------------------------------
-- Area: Selbina
-- NPC:  Humilitie
-- Reports the time remaining before boat arrival.
-- !pos 17.979 -2.39 -58.800 248
-----------------------------------
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Selbina/TextIDs");
require("scripts/globals/teleports");
require("scripts/globals/settings");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (TRAVEL_SKIP >= 1) then
        if (trade:getGil() >= TRAVEL_SKIP and trade:getItemCount() == 1) then
            player:SpoofMsg(string.format("eye's the %d gil.. ", TRAVEL_SKIP), npc, MESSAGE_EMOTION, nil);
            player:SpoofMsg("Well..I guess I can let you aboard the express freight Vessel.. ", npc, MESSAGE_SAY, nil);
            player:delGil(TRAVEL_SKIP);
            -- player:setPos(13,-2,18,,194249);
            player:addStatusEffectEx(EFFECT_COMMUTE,0,COMMUTE.SHIP_TO_MHAURA,0,2);
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)

   -- Based on scripts/zones/Mhaura/Dieh_Yamilsiah.lua
   local timer = 1152 - ((os.time() - 1009810800)%1152);
   local direction = 0; -- Arrive, 1 for depart
   local waiting = 216; -- Offset for Mhaura

   if (timer <= waiting) then
      direction = 1; -- Ship arrived, switch dialog from "arrive" to "depart"
   else
      timer = timer - waiting; -- Ship hasn't arrived, subtract waiting time to get time to arrival
   end

   player:startEvent(231,timer,direction);
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
-----------------------------------
-- Crab Loot Box
-- Custom treasure box NPC
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Rolanberry_Fields_[S]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local item = 20713;
    if (player:hasItem(20713)) then
        item = 17748;
    end
    player:startEvent(3000, item);
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
    -- print("CSID:",csid);
    -- print("RESULT:",option);
    if (csid == 3000 and option == 1) then
        if (player:getFreeSlotsCount() < 1) then
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 20713);
        else
            local item = 20713;
            if (math.random(1,9) == 3 or player:hasItem(20713)) then
                item = 17748;
            end
            player:addItem(item, 1);
            player:SpoofChatPlayer("Found a legendary sword!..Or so you thought..", MESSAGE_EMOTION, nil)
            player:messageSpecial(ITEM_OBTAINED, item);
        end
    end
end;
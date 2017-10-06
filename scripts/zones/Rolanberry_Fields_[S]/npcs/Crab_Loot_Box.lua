-----------------------------------
-- Crab Loot Box
-- Custom treasure box NPC
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields_[S]/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Rolanberry_Fields_[S]/TextIDs");
require("scripts/globals/msg");

local CrabLoot;

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:getLocalVar("gotCrabLoot") == 0) then
        if (player:hasItem(20713)) then
            CrabLoot = 17748; -- 39 in 40 chance of Ibushi Shinai if already have an Excalipoor.
            if (math.random(1,40) == 5) then -- 1 in 40  (2.5%) chance of a 2nd Excalipoor.
                CrabLoot = 20713;
            end
        else
            CrabLoot = 20713; -- Always get an Excalipoor if don't have one already.
        end
        player:startEvent(3000, CrabLoot);
    else
        player:messageBasic(155);
    end
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
        if (CrabLoot == nil) then
            CrabLoot = 17748;
        end

        if (player:getFreeSlotsCount() < 1) then
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, CrabLoot);
        else
            player:addItem(CrabLoot, 1);
            -- One goody per Box Per Person!
            player:setLocalVar("alreadyGotLoot", 1);
            --  Technically they can zone this var off, but box isn't up that long.
            player:SpoofMsg("Found a legendary sword!..Or so you thought.. ", nil, chatType.EMOTION, nil)
            player:messageSpecial(ITEM_OBTAINED, CrabLoot);
        end
    end
end;

-----------------------------------
-- Area: Cloister of Tides
--  NPC: qm2 (???)
-- Notes: Used to obtain a Tidestone
-- @pos 563.036 36.499 564.846
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Tides/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Cloister_of_Tides/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local TIDESTONE = 2798;

    -- Give Player a Tidestone if they don't have one
    if(player:hasItem(TIDESTONE) == false) then
        player:addItem(TIDESTONE);
        player:messageSpecial(ITEM_OBTAINED, TIDESTONE);
    else
        player:messageSpecial(NOTHING_OUT_OF_THE_ORDINARY);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u", csid);
    -- printf("RESULT: %u", option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u", csid);
    -- printf("RESULT: %u", option);
end;
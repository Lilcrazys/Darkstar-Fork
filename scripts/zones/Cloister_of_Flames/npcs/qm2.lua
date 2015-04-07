-----------------------------------
-- Area: Cloister of Flames
--  NPC: qm2 (???)
-- Notes: Used to obtain a Flamestone
-- @pos -718.081 0.000 -596.067
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Flames/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Cloister_of_Flames/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local FLAMESTONE = 2793;

    -- Give Player a Flamestone if they don't have one
    if(player:hasItem(FLAMESTONE) == false) then
        player:addItem(FLAMESTONE);
        player:messageSpecial(ITEM_OBTAINED, FLAMESTONE);
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
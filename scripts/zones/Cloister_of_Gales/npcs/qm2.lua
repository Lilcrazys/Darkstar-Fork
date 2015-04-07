-----------------------------------
-- Area: Cloister of Gales
--  NPC: qm2 (???)
-- Notes: Used to obtain a Galestone
-- @pos -360.041 1.249 -376.850
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Gales/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Cloister_of_Gales/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local GALESTONE = 2795;

    -- Give Player a Galestone if they don't have one
    if(player:hasItem(GALESTONE) == false) then
        player:addItem(GALESTONE);
        player:messageSpecial(ITEM_OBTAINED, GALESTONE);
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
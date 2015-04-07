-----------------------------------
-- Area: Cloister of Storms
--  NPC: qm2 (???)
-- Notes: Used to obtain a Stormstone
-- @pos 537.815,-13.531,491.822
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Storms/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Cloister_of_Storms/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local STORMSTONE = 2797;

    -- Give Player a Stormstone if they don't have one
    if(player:hasItem(STORMSTONE) == false) then
        player:addItem(STORMSTONE);
        player:messageSpecial(ITEM_OBTAINED, STORMSTONE);
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
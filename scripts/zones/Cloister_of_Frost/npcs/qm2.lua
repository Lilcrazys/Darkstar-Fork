-----------------------------------
-- Area: Cloister of Frost
--  NPC: qm2 (???)
-- Notes: Used to obtain a Froststone
-- @pos 557.588 0.574 602.436
-----------------------------------
package.loaded["scripts/zones/Cloister_of_Frost/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Cloister_of_Frost/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local FROSTSTONE = 2794;

    -- Give Player a Froststone if they don't have one
    if(player:hasItem(FROSTSTONE) == false) then
        player:addItem(FROSTSTONE);
        player:messageSpecial(ITEM_OBTAINED, FROSTSTONE);
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
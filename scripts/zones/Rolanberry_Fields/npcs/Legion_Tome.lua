-----------------------------------
-- Area: Rolanberry Fields
--  NPC: Legion Tome
-- Legion NPC
-- !pos 238 24 469 110
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Rolanberry_Fields/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/titles");
-----------------------------------

function onTrade(player,npc,trade)
    player:PrintToPlayer("Entry system has changed, just click it! :-) ");
end;

function onTrigger(player,npc)
    player:PrintToPlayer("You will now be transfered to the lobby area. ");
    player:startEvent(8009);
end;

function onEventUpdate(player,csid,option,target)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option,target)
    -- print("CSID:",csid);
    -- print("RESULT:",option);
    if (csid == 8009) then
        player:setPos(-220, 12, 332, 191, 183);
    end
end;

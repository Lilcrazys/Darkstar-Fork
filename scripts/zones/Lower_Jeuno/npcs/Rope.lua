-----------------------------------
-- Area: Lower Jeuno
--  NPC: Rope
-- @pos 30 4 -36 245
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (TRAVEL_SKIP >= 1 and player:getLocalVar("BRIBED_GARVEV") > 0) then
        player:PrintToPlayer("You carefully sneak past the roped off area.. ", chatType.SYSTEM_3);
        player:setPos(24.15, 5, -42, 86);
    else
        player:PrintToPlayer("Garnev : HEY! Get away from there! Don't go pokin yer nose where it doesn't belong. ", chatType.NS_SAY);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID Update: %u",csid);
    -- printf("RESULT Update: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID Finish: %u",csid);
    -- printf("RESULT Finish: %u",option);
end;

-----------------------------------
-- Area: Lower Jeuno
--  NPC: Rope
-- @pos 30 4 -36 245
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/msg");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (TRAVEL_SKIP >= 1 and player:getLocalVar("BRIBED_GARVEV") > 0) then
        player:SpoofMsg("You carefully sneak past the roped off area.. ", nil, chatType.ECHO, nil);
        player:setPos(24.15, 5, -42, 86);
    else
        player:SpoofMsg("Garnev : HEY! Get away from there! Don't go pokin yer nose where it doesn't belong. ", nil, chatType.SYS_SAY, nil);
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
end;

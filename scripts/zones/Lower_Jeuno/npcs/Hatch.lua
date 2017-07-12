-----------------------------------
-- Area: Lower Jeuno
--  NPC: Hatch
-- @pos 30 4 -36 245
-----------------------------------
require("scripts/globals/teleports");
require("scripts/globals/settings");
require("scripts/globals/spoofchat");

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
        player:SpoofMsg("You stealthily board the secret express freight to Norg.. ", nil, MESSAGE_ECHO, nil);
        player:addStatusEffectEx(EFFECT_COMMUTE,0,COMMUTE.SHIP_TO_NORG,0,2);
    else
        player:SpoofMsg("Garnev : HEY! Get away from there! Don't go pokin yer nose where it doesn't belong. ", nil, MESSAGE_SYS_SAY, nil);
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

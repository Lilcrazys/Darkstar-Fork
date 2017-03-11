-----------------------------------
-- Zone: Abyssea - Attohwa
--  NPC: Atma Infusionist.
--
-----------------------------------
package.loaded["scripts/zones/Abyssea-Attohwa/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/abyssea");
require("scripts/zones/Abyssea-Attohwa/TextIDs");
require("scripts/globals/atma");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    removeATMA(player);
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local param1 = player:getCurrency("Cruor"); -- This param seems to contain both the players current cruor total and the reinfuse option.
    local param2 = 0x01000000; -- This param seems to contain values relating to both the infuse(byte4), reinfuse, and examine options.
    local param3 = 0xFFFFFFFF; -- Available ATMA masks, dummied for now.
    local param4 = 0xFFFFFFFF; -- Available ATMA masks, dummied for now.
    local param5 = 0xFFFFFFFF; -- Available ATMA masks, dummied for now.
    local param6 = 0xFFFFFFFF; -- Available ATMA masks, dummied for now.
    local param7 = 0xFFFFFFFF; -- Available ATMA masks, dummied for now.
    local param8 = 0xFFFFFFFF; -- Available ATMA masks, dummied for now.

    if (countLunars(player) == 0) then
        player:startEvent(2003);
    elseif ((player:getVar("ACTIVE_ATMA_COUNT") >= countLunars(player))) then
        local msgText = string.format("You have the maximum ATMA effects your %i Lunar Abyssite will allow.", countLunars(player));
        player:SpoofMsg(msgText, npc, MESSAGE_SAY, nil);
        player:SpoofMsg("To have all ATMA effects removed, trade me 1 gil. ", npc, MESSAGE_SAY, nil);
    else
        player:PrintToPlayer("Parts of this menu are not yet functional!")
        player:PrintToPlayer("ATMA will be shown even if you do not have it yet!")
        player:startEvent(2003, param1, param2, param3, param4, param5, param6, param7, param8);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    printf("CSID: %u",csid);
    printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    printf("CSID: %u",csid);
    printf("RESULT: %u",option);
    if (option >= 65537 and option ~= 1073741824) then
        if (player:getVar("ACTIVE_ATMA_COUNT") < countLunars(player)) then
            -- player:PrintToPlayer(string.format("Lunars: %i ", countLunars(player)));
            local pwr = (option -1)/65536;
            applyATMA(player, pwr)
        else
            player:PrintToPlayer("ERROR! How did you get here?");
        end
    end
end;
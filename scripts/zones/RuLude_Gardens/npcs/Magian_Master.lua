-----------------------------------
-- Area: Rulude Gardens
--  NPC: Custom (Special) Magian Moogle
-----------------------------------
package.loaded["scripts/zones/Rulude_Gardens/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/custom_trials");
require("scripts/globals/msg");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    local msgText = string.format("Are you trying to give me gifts %s? I WILL NOT SUCCUMB TO BRIBERY! ", player:getName());
    player:SpoofMsg(msgText, npc, chatType.SAY, chatType.SAY);
    if (player:getLocalVar("magianMasterBribery") >= 3) then
        player:setLocalVar("magianMasterBribery", 0);
        player:costume(2239);
    else
        player:setLocalVar("magianMasterBribery", player:getLocalVar("magianMasterBribery")+1);
    end
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofMsg("I have to keep an eye on these 3, especially CJ! He's always slacking off! ", npc, chatType.SAY, nil);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("updateRESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;

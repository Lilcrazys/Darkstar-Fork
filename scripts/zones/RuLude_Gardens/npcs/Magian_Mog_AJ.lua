-----------------------------------
-- Area: Rulude Gardens
--  NPC: Custom (Empyrean) Magian Moogle
-----------------------------------
package.loaded["scripts/zones/Rulude_Gardens/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/RuLude_Gardens/TextIDs");
require("scripts/globals/custom_trials");
require("scripts/globals/spoofchat");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    player:SpoofMsg("Sorry but I'm still in training, kupo.. ", npc, MESSAGE_SAY, nil);
    player:SpoofMsg("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", npc, MESSAGE_SAY, nil);
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofMsg("I'm Magian Mog A.J. kupo! I'm in training to someday handle Empyrean weapon trials. ", npc, MESSAGE_SAY, nil);
    player:SpoofMsg("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", npc, MESSAGE_SAY, nil);
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

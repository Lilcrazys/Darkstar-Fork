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
    player:SpoofChatPlayer("Sorry but I'm still in training, kupo.. ", MESSAGE_SAY, npc:getID());
    player:SpoofChatPlayer("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", MESSAGE_SAY, npc:getID());
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:SpoofChatPlayer("I'm Magian Mog A.J. kupo! I'm in training to someday handle Empyrean weapon trials. ", MESSAGE_SAY, npc:getID() );
    player:SpoofChatPlayer("If neither TJ or CJ can help you, try the guys down in Port Jeuno. ", MESSAGE_SAY, npc:getID());
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

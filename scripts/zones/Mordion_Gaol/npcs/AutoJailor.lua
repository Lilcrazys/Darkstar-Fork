-----------------------------------
-- Area: Mordion Gaol
--  NPC: AutoJailor
-- !pos 699.975 -400.051 -604.394 131
-----------------------------------

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:PrintToPlayer(string.format("问候 %s. 您在这里的存在可能意味着自动过程检测到异常 ", player:getName()));
    player:PrintToPlayer(string.format("Greetings %s. Your presence here likely means that an automated process detected an abnormality.", player:getName()));
    player:PrintToPlayer("你应该立即联系GM 解释完成或看到的最后一件事 ");
    player:PrintToPlayer("You should contact a GM immediately, and if you feel this was in error be prepared to explain exactly what the last thing you actually did or saw was. ");
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
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- Area: Maquette Abdhaljs-Legion
--  NPC: Legion Portal
-- Legion NPC
-- @pos -220 12 333 183
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
    player:startEvent(10004);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("onUpdate CSID: %u", csid);
    -- printf("onUpdate RESULT: %u", option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("onFinish CSID: %u", csid);
    -- printf("onFinish RESULT: %u", option);
    if (csid == 10004 and option == 999) then
        player:setPos(237.5, 24.5, 466.4, 192, 110); -- To Rolanberry Fields
    end
end;

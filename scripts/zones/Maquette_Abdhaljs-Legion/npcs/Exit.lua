-----------------------------------
-- Area: Maquette Abdhaljs-Legion
--  NPC: Exit
-- Custom Legion NPC
-- @pos -220 12 265
-- @pos 180 12 265
-- @pos 220 12 -185
-- @pos 180 12 -180
-- @pos -20 12 68
-- @pos 180 12 333
-- @pos -220 12 -255
-- @pos 180 12 -255
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
    player:startEvent(10003);
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
    if (csid == 10003 and option == 1) then
        player:setPos(237.5, 24.5, 466.4, 192, 110); -- To Rolanberry Fields
    end
end;

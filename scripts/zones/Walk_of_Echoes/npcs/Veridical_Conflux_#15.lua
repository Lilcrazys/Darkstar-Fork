-----------------------------------
-- Area: Walk Of Echoes
--  NPC: Treasure Coffer
-- @pos -414 14 -60 182
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
    local playaTable = player:getZone():getPlayers();
    local timeRemaining = 0xFFE;
    local enemiesMsg = 2;
    local confluxID = 1;
    local param1 = 0x80000000 +(timeRemaining*4096)+(enemiesMsg*256)+confluxID;
    --               xxTTTExI
    -- x = unknown
    -- I = battlfield ID
    -- E = Enemies message
    -- T = Timer
    local inConflux = 0; -- GetWoEbyID():getPlayers();
    -- begin temp crap..
    for x, person in pairs(playaTable) do
        inConflux=inConflux+1;
    end
    -- end temp crap..
    local maxParticipant = 255;
    local param2 = inConflux+(maxParticipant*256);
    local warn = 1;
    player:startEvent(1000, param1, param2, 0, warn, 0, 0, 0, 0 );
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
    player:PrintToPlayer("onEventFinish CSID: "..csid);
    player:PrintToPlayer("onEventFinish RESULT: "..option);
    if (csid == 1004 and option == 0) then
        player:setPos(238, -8, -248, 0, 137);
    end
end;

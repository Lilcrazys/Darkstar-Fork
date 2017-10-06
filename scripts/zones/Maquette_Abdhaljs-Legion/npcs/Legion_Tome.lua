-----------------------------------
-- Area: Maquette Abdhaljs-Legion
--  NPC: Legion Tome
-- Legion NPC
-- @pos 180 12 -251 183
-----------------------------------
package.loaded["scripts/zones/Maquette_Abdhaljs-Legion/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Maquette_Abdhaljs-Legion/TextIDs");
-- require("scripts/globals/keyitems");
-- require("scripts/globals/status");
-- require("scripts/globals/bcnm");
require("scripts/globals/msg");

local price = 60000; -- It's up here so it can be seen by both functions

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    print('[DEBUG] Player trading to enter Legion : '..player:getName());
    print('[DEBUG] Gil total        : '..trade:getGil()..' ('..tostring(trade:getGil() == price)..')');
    print('[DEBUG] Fire Cluster     : '..tostring(trade:hasItemQty(4104,1)));
    print('[DEBUG] Lofty Trophy     : '..tostring(trade:hasItemQty(3529,1)));
    print('[DEBUG] Mired Trophy     : '..tostring(trade:hasItemQty(3530,1)));
    print('[DEBUG] Soaring Trophy   : '..tostring(trade:hasItemQty(3531,1)));
    print('[DEBUG] Veiled Trophy    : '..tostring(trade:hasItemQty(3532,1)));
    print('[DEBUG] Total item count : '..trade:getItemCount());

    local gil = trade:getGil();
    local itemCount = trade:getItemCount();

    if (trade:hasItemQty(4104,1) and gil == price and itemCount == 2) then -- gil + fire cluster to pop legion hall An
        player:setLocalVar("Legion_Hall_ID", 1);
        player:startEvent(10002,0);
    elseif (trade:hasItemQty(3529,1) and gil == price and itemCount == 2) then -- gil + lofty trophy to pop legion hall Ki
        player:setLocalVar("Legion_Hall_ID", 2);
        player:startEvent(10002,1);
    elseif (trade:hasItemQty(3530,1) and gil == price and itemCount == 2) then -- gil + mired trophy to pop legion hall Im
        player:setLocalVar("Legion_Hall_ID", 3);
        player:startEvent(10002,2);
    elseif (trade:hasItemQty(3531,1) and gil == price and itemCount == 2) then -- gil + soaring trophy to pop legion hall Muru
        player:setLocalVar("Legion_Hall_ID", 4);
        player:startEvent(10002,3);
    elseif (trade:hasItemQty(3532,1) and gil == price and itemCount == 2) then -- gil + veiled trophy to pop legion hall Mul
        player:setLocalVar("Legion_Hall_ID", 5);
        player:startEvent(10002,4);
    else
        player:PrintToPlayer( "You do not meet the requirements to launch Legion!" );
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local AN = "\n Hall of An : Fire Cluster ";
    local IM = "\n Hall of Im : Lofty Trophy ";
    local KI = "\n Hall of Ki : Mired Trophy ";
    local MURU = "\n Hall of Muru : Soaring Trophy ";
    local MULL = "\n Hall of Mull : Veiled Trophy ";
    local msgText = AN..IM..KI..MURU..MULL;
    player:SpoofMsg("Entry requires "..price.." gil and an item. ", npc, chatType.ECHO, nil);
    player:SpoofMsg(msgText, npc, chatType.ECHO, nil);
    -- player:SpoofMsg("\n Hall(s) of SECRETS : Can you discover it? ", npc, chatType.ECHO, nil);
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

    local alliance = player:getAlliance();
    local legionHall = player:getLocalVar("Legion_Hall_ID");
    local tele2Hall = 10009+(legionHall);
    --[[
        Event    Place            (   x    y    z  )
        10010    Hall of An       ( -220, 12,  265 )
        10011    Hall of Im       (  180, 12,  265 )
        10012    Hall of Ki       (  220, 12, -185 )
        10013    Hall of Muru     (  180, 12, -180 )
        10014    Hall of Mull     (  -20, 12,   68 )
        10015    Lobby A          ( -220, 12,  332 )
        10016    Lobby B          (  180, 12,  333 )
        10017    Lobby C          ( -220, 12, -255 )
        10018    Lobby D          (  180, 12, -255 )
        10019    Lobby A ..again..( -220, 12,  332 )
    ]]
    if (csid == 10002 and option == 1) then
        print('[DEBUG] Hall ID: ' .. legionHall);
        if (legionHall > 0 and legionHall <= 5) then
            local alliance = player:getAlliance();
            if (alliance ~= nil) then
                for _,member in pairs(alliance) do
                    if (player:getZoneID() == member:getZoneID()) then
                        member:startEvent(tele2Hall);
                    end
                end
            end
        end
    elseif (csid == 10010 and csid == tele2Hall) then -- An
        SpawnMob(17526785); -- Lofty Behemoth
        SpawnMob(17526786); -- Lofty Wyrm
        SpawnMob(17526787); -- Lofty Adamantoise
        player:tradeComplete();
        -- player:setPos(-220, 12, 265, 63, 183); -- Right
        -- player:setPos(-180, 12, 212, 192, 183); -- Wrong
    elseif (csid == 10011 and csid == tele2Hall) then -- Ki
        SpawnMob(17526805); -- Mired Cerberus
        SpawnMob(17526806); -- Mired Khimaira
        SpawnMob(17526807); -- Mired Hydra
        player:tradeComplete();
        -- player:setPos(180, 12, 265, 63, 183); -- Right
        -- player:setPos(130, 12, 220, 0, 183); -- Wrong
    elseif (csid == 10012 and csid == tele2Hall) then -- Im
        SpawnMob(17526819); -- Soaring Corse
        SpawnMob(17526820); -- Soaring Dvergr
        SpawnMob(17526821); -- Soaring Vampyr
        player:tradeComplete();
        -- player:setPos(220, 12, -185, 191, 183); -- Right
        -- player:setPos(140, 12, -132, 64, 183); -- Wrong
    elseif (csid == 10013 and csid == tele2Hall) then -- Muru
        SpawnMob(17526833); -- Veiled Amphiptere
        SpawnMob(17526834); -- Veiled Ixion
        SpawnMob(17526835); -- Veiled Sandworm
        player:tradeComplete();
        -- player:setPos(180, 12, -180, 128, 183); -- Right
        -- player:setPos(-170, 12, -140, 128, 183); -- Wrong
    elseif (csid == 10014 and csid == tele2Hall) then -- Mul
        SpawnMob(17526847); -- Lofty Harpeia (Alt)
        SpawnMob(17526848); -- Mired Mantis (Alt)
        SpawnMob(17526849); -- Soaring Naraka (Alt)
        SpawnMob(17526850); -- Veiled Ironclad (Alt)
        player:tradeComplete();
        -- player:setPos(-20, 12, 68, 63, 183); -- Exactly right
        -- player:setPos(-20, 12, 68, 64, 183); -- Almost!
    --[[
    elseif (csid == 10015) then -- Lobby A
        -- player:setPos(-220, 12, 332, 191, 183);
    elseif (csid == 10016) then -- Lobby B
        -- player:setPos(180, 12, 333, 191, 183);
    elseif (csid == 10017) then -- Lobby C
        -- player:setPos(-220, 12, -255, 63, 183);
    elseif (csid == 10018) then -- Lobby D
        -- player:setPos(180, 12, -255, 63, 183);
    elseif (csid == 10019) then -- Lobby A (again)
        -- player:setPos(-220, 12, 332, 191, 183);
    ]]
    end
end;

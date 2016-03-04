-----------------------------------
-- Area: Maquette Abdhaljs-Legion
--  NPC: Legion Tome
-- Legion NPC
-- @pos 180 12 -251 183
-----------------------------------
-- package.loaded["scripts/zones/Maquette_Abdhaljs-Legion/TextIDs"] = nil;
-----------------------------------
-- require("scripts/zones/Maquette_Abdhaljs-Legion/TextIDs");
-- require("scripts/globals/keyitems");
-- require("scripts/globals/status");
-- require("scripts/globals/bcnm");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- local HALL = 0;

    if (trade:getGil(1000000)) then
        if (trade:hasItemQty(4104,1) and trade:getItemCount() == 1) then -- gil + fire cluster to pop legion hall An
            SpawnMob(17526785); -- Lofty_Behemoth
            SpawnMob(17526786); -- Lofty_Wyrm
            SpawnMob(17526787); -- Lofty_Adamantoise
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(-180, 12, 212, 192);
            -- HALL = 1;
        elseif (trade:hasItemQty(3529,1) and trade:getItemCount() == 1) then -- gil + lofty trophy to pop legion hall Ki
            SpawnMob(17526805); -- Mired_Cerberus
            SpawnMob(17526806); -- Mired_Khimaira
            SpawnMob(17526807); -- Mired_Hydra
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(130, 12, 220, 0);
            -- HALL = 2;
        elseif (trade:hasItemQty(3530,1) and trade:getItemCount() == 1) then -- gil + mired trophy to pop legion hall Im
            SpawnMob(17526819); -- Soaring_Corse
            SpawnMob(17526820); -- Soaring_Dvergr
            SpawnMob(17526821); -- Soaring_Vampyr
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(140, 12, -132, 64);
            -- HALL = 3;
        elseif (trade:hasItemQty(3531,1) and trade:getItemCount() == 1) then -- gil + soaring trophy to pop legion hall Muru
            SpawnMob(17526833); -- Veiled_Amphiptere
            SpawnMob(17526834); -- Veiled_Ixion
            SpawnMob(17526835); -- Veiled_Sandworm
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(-170, 12, -140, 128);
            -- HALL = 4;
        elseif (trade:hasItemQty(3532,1) and trade:getItemCount() == 1) then -- gil + veiled trophy to pop legion hall Mul
            SpawnMob(17526851); -- Paramount_Naraka
            SpawnMob(17526852); -- Paramount_Harpeia
            SpawnMob(17526853); -- Paramount_Mantis
            SpawnMob(17526854); -- Paramount_Ironclad
            SpawnMob(17526880); -- 2 hour ele
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(-20, 12, 68, 64);
            -- HALL = 5;
        end
    else
        player:PrintToPlayer( "You do not meet the requirements to launch Legion!" );
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
--[[
    if (player:getPartySize() < 3) then
        player:messageSpecial(PARTY_TOO_SMALL);
    else
        local HALL_ID = player:getVar("Legion_Hall_ID");
        if (HALL_ID > 0) then
            -- player:addStatusEffectEx(EFFECT_LEGION, EFFECT_BATTLEFIELD, HALL_ID, 0, 0, 0, 0, 0);
            HALL_ID = HALL_ID -1;
            player:startEvent(10002, HALL_ID)
        end
    end
]]
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
--[[
    local party = player:getParty();
    if (csid == 10000) then
        -- ?
    elseif (csid == 10001) then
        -- ?
    elseif (csid == 10002 and option == 1) then
        if (player:getVar("Legion_Hall_ID") == 1) then -- An
        elseif (player:getVar("Legion_Hall_ID") == 2) then -- Ki
        elseif (player:getVar("Legion_Hall_ID") == 3) then -- Im
        elseif (player:getVar("Legion_Hall_ID") == 4) then -- Muru
        elseif (player:getVar("Legion_Hall_ID") == 5) then -- Mul
        -- elseif (player:getVar("Legion_Hall_ID") == 127) then -- Mars
            -- Mars needs instance code.
        end
    elseif (csid == 10003 and option == 1) then -- Victory
        player:setVar("Legion_Hall_ID", 0);
        player:setPos(237.5, 24.5, 466.4, 192, 110);
    elseif (csid == 10004 and option == 999) then -- Failure
        player:setVar("Legion_Hall_ID", 0);
        player:setPos(237.5, 24.5, 466.4, 192, 110);
    end
]]
end;
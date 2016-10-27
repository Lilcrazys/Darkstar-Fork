-----------------------------------
-- Area: Rolanberry Fields
--  NPC: Legion Tome
-- Legion NPC
-- @pos 238 24 469 110
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Rolanberry_Fields/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/keyitems");
require("scripts/globals/titles");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- local HALL = 0;

    print('Player trading to enter Legion: ' .. player:getName());
    print('gil:   ' .. trade:getGil(1000000));
    print('qty:   ' .. tostring(trade:hasItemQty(4104,1)));
    print('total: ' .. trade:getItemCount());
    
    if (trade:getGil(1000000) == 1000000) then
        if (trade:hasItemQty(4104,1) and trade:getItemCount() == 2) then -- gil + fire cluster to pop legion hall An
            SpawnMob(17526785); -- Lofty_Behemoth
            SpawnMob(17526786); -- Lofty_Wyrm
            SpawnMob(17526787); -- Lofty_Adamantoise
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(-180, 12, 212, 192, 183);
            -- HALL = 1;
        elseif (trade:hasItemQty(3529,1) and trade:getItemCount() == 2) then -- gil + lofty trophy to pop legion hall Ki
            SpawnMob(17526805); -- Mired_Cerberus
            SpawnMob(17526806); -- Mired_Khimaira
            SpawnMob(17526807); -- Mired_Hydra
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(130, 12, 220, 0, 183);
            -- HALL = 2;
        elseif (trade:hasItemQty(3530,1) and trade:getItemCount() == 2) then -- gil + mired trophy to pop legion hall Im
            SpawnMob(17526819); -- Soaring_Corse
            SpawnMob(17526820); -- Soaring_Dvergr
            SpawnMob(17526821); -- Soaring_Vampyr
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(140, 12, -132, 64, 183);
            -- HALL = 3;
        elseif (trade:hasItemQty(3531,1) and trade:getItemCount() == 2) then -- gil + soaring trophy to pop legion hall Muru
            SpawnMob(17526833); -- Veiled_Amphiptere
            SpawnMob(17526834); -- Veiled_Ixion
            SpawnMob(17526835); -- Veiled_Sandworm
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(-170, 12, -140, 128, 183);
            -- HALL = 4;
        elseif (trade:hasItemQty(3532,1) and trade:getItemCount() == 2) then -- gil + veiled trophy to pop legion hall Mul
            SpawnMob(17526851); -- Paramount_Naraka
            SpawnMob(17526852); -- Paramount_Harpeia
            SpawnMob(17526853); -- Paramount_Mantis
            SpawnMob(17526854); -- Paramount_Ironclad
            SpawnMob(17526880); -- 2 hour ele
            -- player:PrintToPlayer( "You will now be transported to Legion" ); -- needs to be spoof saying....
            player:delGil(1000000);
            player:tradeComplete();
            player:setPos(-20, 12, 68, 64, 183);
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
    -- player:startEvent(8009);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option,target)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option,target)
    -- print("CSID:",csid);
    -- print("RESULT:",option);
end;
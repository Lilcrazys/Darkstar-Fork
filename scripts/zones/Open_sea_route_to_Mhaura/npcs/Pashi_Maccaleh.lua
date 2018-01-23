-----------------------------------
-- Area: Open sea route to Mhaura
--  NPC: Pashi Maccaleh
-- Guild Merchant NPC: Fishing Guild
-- @pos 4.986 -2.101 -12.026 47
-----------------------------------
package.loaded["scripts/zones/Open_sea_route_to_Mhaura/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Open_sea_route_to_Mhaura/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(523,1,23,5)) then
        player:showText(npc,PASHI_MACCALEH_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,PASHI_MACCALEH_SHOP_DIALOG);
        local stock =
        {
            4403,   336,    -- Yellow Globe
            4480,   2440,   -- Gugru Tuna
            17387,  4077,   -- Tarutaru Fishing Rod
            17395,  9,      -- Lugworm
            17399,  2394,   -- Sabiki Rig
            17400,  691,    -- Sinking Minnow
            17407,  270     -- Minnow
        };
        showShop(player, STATIC, stock);
end; 

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;


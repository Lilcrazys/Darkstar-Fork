-----------------------------------
-- Area: Open sea route to Al Zahbi
--  NPC: Cehn Teyohngo
-- Guild Merchant NPC: Fishing Guild
-- @pos 4.986 -2.101 -12.026 46
-----------------------------------
package.loaded["scripts/zones/Open_sea_route_to_Al_Zahbi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Open_sea_route_to_Al_Zahbi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(522,1,23,5)) then
        player:showText(npc,CEHN_TEYOHNGO_SHOP_DIALOG);
    end
    ]]
        player:showText(npc, CEHN_TEYOHNGO_SHOP_DIALOG);
        local stock =
        {
            4403,    336,     -- Yellow Globe
            4480,    2440,    -- Gugru Tuna
            17387,   4077,    -- Tarutaru Fishing Rod
            17395,   9,       -- Lugworm
            17399,   2394,    -- Sabiki Rig
            17400,   691,     -- Sinking Minnow
            17407,   270      -- Minnow
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


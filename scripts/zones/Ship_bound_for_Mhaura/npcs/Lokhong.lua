-----------------------------------
-- Area: Ship bound for Mhaura
--  NPC: Lokhong
-- Type: Guild Merchant: Fishing Guild
-- !pos 1.841 -2.101 -9.000 221
-----------------------------------
package.loaded["scripts/zones/Ship_bound_for_Mhaura/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Ship_bound_for_Mhaura/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(521,1,23,5)) then
        player:showText(npc,LOKHONG_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,LOKHONG_SHOP_DIALOG);
        local stock =
        {
            624,    47,     -- Pamtam
            4385,   235,    -- Zafmlug Bass
            4399,   1350,   -- Bluetail
            4451,   3000,   -- Silver Shark
            4483,   509,    -- Tiger Cod
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


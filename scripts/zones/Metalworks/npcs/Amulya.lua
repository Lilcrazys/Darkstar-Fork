-----------------------------------
-- Area: Metalworks
--  NPC: Amulya
-- Type: Guild Merchant (Blacksmithing Guild)
-- !pos -106.093 0.999 -24.564 237
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Metalworks/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(5332,8,23,2)) then
        player:showText(npc, AMULYA_SHOP_DIALOG);
    end
    ]]
        player:showText(npc, AMULYA_SHOP_DIALOG);
        local stock =
        {
            640,      9,       -- Copper Ore
            641,      30,      -- Tin Ore
            643,      675,     -- Iron Ore
            649,      103,     -- Bronze Ingot
            651,      2700,    -- Iron Ingot
            660,      69,      -- Bronze Sheet
            662,      4050,    -- Iron Sheet
            2143,     75,      -- Mandrel
            2144,     75       -- Workshop Anvil
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


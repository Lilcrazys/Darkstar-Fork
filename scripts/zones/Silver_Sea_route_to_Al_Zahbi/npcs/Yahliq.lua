-----------------------------------
-- Area: Silver Sea route to Al Zahbi
--  NPC: Yahliq
-- Type: Guild Merchant: Fishing Guild
-- !pos 4.986 -2.101 -12.026 59
-----------------------------------
package.loaded["scripts/zones/Silver_Sea_route_to_Al_Zahbi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Silver_Sea_route_to_Al_Zahbi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(525,1,23,5)) then
        player:showText(npc,YAHLIQ_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,YAHLIQ_SHOP_DIALOG);
        local stock =
        {
            2177,    36,     -- Ice Card
            2180,    36,     -- Thunder Card
            2182,    36,     -- Light Card
            2183,    36,     -- Dark Card
            5449,    92,     -- Hamsi
            5450,    1957,   -- Lakerda
            17387,   4077,   -- Tarutaru Fishing Rod
            17395,   9,      -- Lugworm
            17399,   2394,   -- Sabiki Rig
            17400,   691,    -- Sinking Minnow
            17404,   270     -- Minnow
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

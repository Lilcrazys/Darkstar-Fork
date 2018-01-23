-----------------------------------
-- Area: Carpenters' Landing
--  NPC: Beugungel
-- Type: Guild Merchant NPC (Woodworking Guild)
-- !pos -333.729, -5.512, 475.647 2
-----------------------------------
package.loaded["scripts/zones/Carpenters_Landing/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Carpenters_Landing/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(534,5,22,0)) then
        player:showText(npc,BEUGUNGEL_SHOP_DIALOG);
    end
    ]]
        player:showText(npc, BEUGUNGEL_SHOP_DIALOG);
        local stock =
        {
            688,     12,     -- Arrowwood Log
            693,     640,    -- Walnut Log
            695,     120,    -- Willow Log
            696,     330,    -- Yew Log
            698,     60,     -- Ash Log
            1021,    312,    -- Hatchet
            1657,    75      -- Bundling Twine
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


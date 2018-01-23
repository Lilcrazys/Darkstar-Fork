-----------------------------------
-- Area: Windurst Waters
--  NPC: Chomo Jinjahl
-- Guild Merchant NPC: Cooking Guild
-- !pos -105.094 -2.222 73.791 238
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Waters/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(5302,5,20,7)) then
        player:showText(npc,CHOMOJINJAHL_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,CHOMOJINJAHL_SHOP_DIALOG);
        local stock =
        {
            936,     16,     -- Rock Salt
            4509,    12,     -- Distilled Water
            4362,    100,    -- Lizard Egg
            4392,    32,     -- Saruta Orange
            4431,    76,     -- San d'Orian Grape
            9193,    2500,   -- Miso
            9194,    2500,   -- Soy Sauce
            9195,    2500,   -- Dried Bonito
            610,     60,     -- San d'Oria Flour
            627,     40,     -- Maple Sugar
            4363,    44,     -- Faerie Apple
            4378,    60,     -- Selbina Milk
            4370,    200,    -- Honey
            4432,    60,     -- Kazham Pineapple
            4366,    24,     -- La Theine Cabbage
            611,     40,     -- Rye Flour
            4412,    325,    -- Thundermelon
            4491,    200,    -- Watermelon
            615,     60,     -- Selbina Butter
            612,     60,     -- Kazham Peppers
            1111,    900,    -- Gelatin
            1776,    3000,   -- Spaghetti
            5164,    800,    -- Ground Wasabi
            616,     1600,   -- Pie Dough
            2561,    3000,   -- Pizza Dough
            8800,    800     -- Azuki Bean
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
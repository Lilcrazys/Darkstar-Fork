-----------------------------------
-- Area: Bastok Mines
--  NPC: Odoba
-- Guild Merchant NPC: Alchemy Guild
-- !pos 108.473 5.017 1.089 234
-----------------------------------
package.loaded["scripts/zones/Bastok_Mines/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Bastok_Mines/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(526,8,23,6)) then
        player:showText(npc, ODOBA_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,ODOBA_SHOP_DIALOG);
        local stock =
        {
            2131,   75,      -- Triturator
            912,    40,      -- Beehive Chip
            914,    1700,    -- Mercury
            937,    300,     -- Animal Glue
            943,    320,     -- Poison Dust
            637,    1500,    -- Slime Oil
            928,    515,     -- Bomb Ash
            921,    200,     -- Ahriman Tears
            933,    1200,    -- Glass Fiber
            947,    5000,    -- Firesand
            4171,   700,     -- Vitriol
            1886,   4000,    -- Sieglinde Putty
            923,    1800,    -- Dryad Root
            932,    1900,    -- Carbon Fiber
            939,    2100,    -- Hecteyes Eye
            915,    3600,    -- Toad Oil
            931,    5000,    -- Cermet Chunk
            944,    1035     -- Venom Dust
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


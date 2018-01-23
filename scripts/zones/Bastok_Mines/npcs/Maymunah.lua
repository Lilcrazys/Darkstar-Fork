-----------------------------------
-- Area: Bastok Mines
--  NPC: Maymunah
-- Guild Merchant NPC: Alchemy Guild
-- !pos 108.738 5.017 -3.129 234
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
    if (player:sendGuild(5262,8,23,6)) then
        player:showText(npc, MAYMUNAH_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,MAYMUNAH_SHOP_DIALOG);
        local stock =
        {
            622,    36,     -- Dried Marjoram
            636,    97,     -- Chamomile
            638,    138,    -- Sage
            914,    1125,   -- Mercury
            931,    19520,  -- Cerment Chunk
            933,    664,    -- Glass Fiber
            951,    90,     -- Wijnruit
            1108,   573,    -- Sulfur
            2131,   75,     -- Triturator
            4112,   682,    -- Potion
            4443,   60,     -- Cobalt Jellyfish
            18228,  114,    -- Battery
            18232,  114,    -- Hydro Pump
            18236,  21      -- Wind Fan
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


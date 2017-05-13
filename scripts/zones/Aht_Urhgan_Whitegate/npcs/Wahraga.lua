-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC: Wahraga
--  Guild Merchant: Alchemist Guild
--  @pos -76.836 -6.000 140.331 50
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(60425,8,23,5)) then
        player:showText(npc,WAHRAGA_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,WAHRAGA_SHOP_DIALOG);
        local stock =
        {
            621,      25,     -- Crying Mustard
            622,      43,     -- Dried Marjoram
            636,      117,    -- Chamomile
            638,      166,    -- Sage
            914,      1125,   -- Mercury
            920,      1084,   -- Malboro Vine
            933,      3392,   -- Glass Fiber
            951,      108,     -- Wijnruit
            1108,     688,    -- Sulfur
            2131,     75,     -- Triturator
            2229,     1080,   -- Chimera Blood
            2309,     963,    -- Homunculus Nerves
            2316,     6,      -- Polyflan Paper
            4443,     63,    -- Cobalt Jellyfish
            4509,     12,     -- Distilled Water
            18228,    114,    -- Battery
            18232,    114,    -- Hydro Pump
            18236,    21      -- Wind Fan
        };
        showShop(player, STATIC, stock);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;


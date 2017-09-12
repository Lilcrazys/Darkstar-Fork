-----------------------------------
--  Area: Al Zahbi
--  NPC: Ndego
--  Guild Merchant NPC: Smithing Guild
-- !pos -37.192 0.000 -33.949 48
-----------------------------------
package.loaded["scripts/zones/Al_Zahbi/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Al_Zahbi/TextIDs");

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
    if (player:sendGuild(60427,8,23,2)) then
        player:showText(npc,NDEGO_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,NDEGO_SHOP_DIALOG);
        local stock =
        {
            640,    10,     -- Copper Ore
            641,    500,    -- Tin Ore
            643,    1000,   -- Iron Ore
            649,    288,   -- Bronze Ingot
            651,    1700,  -- Iron Ingot
            660,    350,    -- Bronze Sheet
            662,    2173,  -- Iron Sheet
            2143,   75,    -- Mandrel
            2144,   75     -- Workshop Anvil
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


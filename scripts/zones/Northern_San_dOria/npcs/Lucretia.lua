-----------------------------------
--  Area: Northern San d'Oria
--  NPC: Lucretia
--  Guild Merchant NPC: Blacksmithing Guild
-- !pos -193.729 3.999 159.412 231
-----------------------------------
package.loaded["scripts/zones/Northern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Northern_San_dOria/TextIDs");

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
    if (player:sendGuild(5312,8,23,2)) then
        player:showText(npc,LUCRETIA_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,LUCRETIA_SHOP_DIALOG);
        local stock =
        {
            640,    9,       -- Copper Ore
            641,    30,      -- Tin Ore
            643,    675,     -- Iron Ore
            649,    115,     -- Bronze Ingot
            651,    2700,    -- Iron Ingot
            652,    25620,   -- Steel Ingot
            660,    69,      -- Bronze Sheet
            662,    4050,    -- Iron Sheet
            1155,   2400,    -- Iron Sand
            2143,   75,      -- Mandrel
            2144,   75,      -- Workshop Anvil
            12432,  2711,    -- Faceguard
            12688,  2344,    -- Scale Finger Gauntlets
            13873,  61107,   -- Steel Visor
            12688,  18270,   -- War Pick
            13873,  66555    -- Mythril Pick
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


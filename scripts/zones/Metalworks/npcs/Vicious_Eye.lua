-----------------------------------
-- Area: Metalworks
-- NPC:  Vicious Eye
-- Type: Guild Merchant (Blacksmithing Guild)
-- !pos -106.132 0.999 -28.757 237
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Metalworks/TextIDs");

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
    if (player:sendGuild(533,8,23,2)) then
        player:showText(npc, VICIOUS_EYE_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,VICIOUS_EYE_SHOP_DIALOG);
        local stock =
        {
            640,    12,      -- Copper Ore
            1232,   70,      -- Bronze Nugget
            641,    60,      -- Tin Ore
            660,    120,     -- Bronze Sheet
            643,    900,     -- Iron Ore
            1650,   800,     -- Kopparnickel Ore
            1234,   500,     -- Iron Nugget
            662,    6000,    -- Iron Sheet
            666,    10000,   -- Steel Sheet
            652,    6000,    -- Steel Ingot
            657,    12000,   -- Tama-Hagane
            1228,   2700,    -- Dst. Nugget
            645,    7000,    -- Darksteel Ore
            1235,   800,     -- Steel Nugget
            664,    28000,   -- Darksteel Sheet
            2763,   5000,    -- Swamp Ore
            2143,   75,      -- Mandrel
            2144,   75       -- Workshop Anvil
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


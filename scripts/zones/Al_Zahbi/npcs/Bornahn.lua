-----------------------------------
--  Area: Al Zahbi
--  NPC: Bornahn
--  Guild Merchant NPC: Goldsmithing Guild 
-- @pos 46.011 0.000 -42.713 48
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
    if (player:sendGuild(60429,8,23,4)) then
        player:showText(npc,BORNAHN_SHOP_DIALOG);
    end
    ]]
        player:showText(npc, BORNAHN_SHOP_DIALOG);
        local stock =
        {
            640,    9,       -- Copper Ore
            644,    1500,    -- Mythril Ore
            673,    436,     -- Brass Scales
            681,    21840,   -- Mythril Chain
            736,    315,     -- Silver Ore
            769,    6328,    -- Red Rock
            770,    6328,    -- Blue Rock
            771,    6328,    -- Yellow Rock
            772,    6328,    -- Green Rock
            773,    6328,    -- Translucent Rock
            774,    6328,    -- Purple Rock
            775,    6328,    -- Black Rock
            776,    6328,    -- White Rock
            795,    1396,    -- Lapis Lazuli
            796,    1396,    -- Light Opal
            799,    1396,    -- Onyx
            800,    1396,    -- Amethyst
            806,    1396,    -- Tourmaline
            807,    1396,    -- Sardonyx
            809,    1396,    -- Clear Topaz
            814,    1396,    -- Amber
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


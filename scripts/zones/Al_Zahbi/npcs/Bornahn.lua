-----------------------------------
-- Area: Al Zahbi
--  NPC: Bornahn
--  Guild Merchant NPC: Goldsmithing Guild
-- !pos 46.011 0.000 -42.713 48
-----------------------------------
package.loaded["scripts/zones/Al_Zahbi/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Al_Zahbi/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(60429,8,23,4)) then
        player:showText(npc,BORNAHN_SHOP_DIALOG);
    end
    ]]
        player:showText(npc, BORNAHN_SHOP_DIALOG);
        local stock =
        {
            640,    10,       -- Copper Ore
            644,    1000,    -- Mythril Ore
            673,    436,     -- Brass Scales
            681,    5180,   -- Mythril Chain
            736,    100,     -- Silver Ore
            769,    6328,    -- Red Rock
            770,    6328,    -- Blue Rock
            771,    6328,    -- Yellow Rock
            772,    6328,    -- Green Rock
            773,    6328,    -- Translucent Rock
            774,    6328,    -- Purple Rock
            775,    6328,    -- Black Rock
            776,    6328,    -- White Rock
            795,    1676,    -- Lapis Lazuli
            796,    1676,    -- Light Opal
            799,    1676,    -- Onyx
            800,    1676,    -- Amethyst
            806,    1676,    -- Tourmaline
            807,    1676,    -- Sardonyx
            809,    1676,    -- Clear Topaz
            814,    1676,    -- Amber
            2144,   75       -- Workshop Anvil
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


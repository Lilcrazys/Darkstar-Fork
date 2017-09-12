-----------------------------------
-- Area: Bastok Markets
--  NPC: Teerth
--  Guild Merchant NPC: Goldsmithing Guild
-- !zone
-- !pos -205.190 -7.814 -56.507 235
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Bastok_Markets/TextIDs");

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
    if (player:sendGuild(527,8,23,4)) then
        player:showText(npc,TEERTH_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,TEERTH_SHOP_DIALOG);
        local stock =
        {
            2144,    75,      -- Workshop Anvil
            2143,    75,      -- Mandrel
            642,     200,     -- Zinc Ore
            640,     12,      -- Copper Ore
            1231,    1000,    -- Brass Nugget
            661,     3000,    -- Brass Sheet
            736,     450,     -- Silver Ore
            1233,    200,     -- Silver Nugget
            806,     1863,    -- Tourmaline
            807,     1863,    -- Sardonyx
            809,     1863,    -- Clear Topaz
            800,     1863,    -- Amethyst
            795,     1863,    -- Lapis Lazuli
            814,     1863,    -- Amber
            799,     1863,    -- Onyx
            796,     1863,    -- Light Opal
            760,     23000,   -- Silver Chain
            644,     2000,    -- Mythril Ore
            737,     3000,    -- Gold Ore
            663,     12000,   -- Mythril Sheet
            788,     8000,    -- Peridot
            790,     8000,    -- Garnet
            808,     8000,    -- Goshenite
            811,     8000,    -- Ametrine
            798,     8000,    -- Turquoise
            815,     8000,    -- Sphene
            793,     12000,   -- Black Pearl
            792,     11000,   -- Pearl
            678,     5000,    -- Aluminum Ore
            752,     32000,   -- Gold Sheet
            761,     58000,   -- Gold Chain
            738,     6000     -- Platinum Ore
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


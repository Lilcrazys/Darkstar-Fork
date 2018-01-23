-----------------------------------
-- Area: Lower Jeuno
--  NPC: Amalasanda
-- Type: Tenshodo Merchant
-- !pos 28.149 2.899 -44.780 245
-----------------------------------
package.loaded["scripts/zones/Lower_Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Lower_Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        --[[
        if (player:sendGuild(60416,1,23,1)) then
            player:showText(npc, AMALASANDA_SHOP_DIALOG);
        end
        ]]
        player:showText(npc, AMALASANDA_SHOP_DIALOG);
        local stock =
        {
            626,     229,      -- Black Pepper
            657,     4690,     -- Tama-Hagane
            704,     96,       -- Bamboo Stick
            829,     35070,    -- Silk Cloth
            1161,    66,       -- Uchitake
            1170,    58,       -- Makibishi
            1176,    44,       -- Mizu-Deppo
            1240,    165,      -- Koma
            1415,    55147,    -- Urushi
            1471,    316,      -- Sticky Rice
            1475,    579,      -- Curry Powder
            1554,    431,      -- Turmeric
            1555,    1061,     -- Coriander
            1590,    536,      -- Holy Basil
            1652,    150,      -- Rice Vinegar
            4928,    1561,     -- Katon: Ichi
            4934,    1561,     -- Huton: Ichi
            4937,    1561,     -- Doton: Ichi
            4943,    1561,     -- Suiton: Ichi
            5164,    1945,     -- Ground Wasabi
            5237,    369       -- Shirataki
        };
        showShop(player, STATIC, stock);
    else
        -- player:startEvent(150);
    end
end;

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;


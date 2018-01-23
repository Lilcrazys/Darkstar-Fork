-----------------------------------
-- Area: Norg
--  NPC: Vuliaie
-- Type: Tenshodo Merchant
-- !pos -24.259 0.891 -19.556 252
-----------------------------------
package.loaded["scripts/zones/Norg/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Norg/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        --[[
        if (player:sendGuild(60424,9,23,7)) then
            player:showText(npc, VULIAIE_SHOP_DIALOG);
        end
        ]]
        player:showText(npc,VULIAIE_SHOP_DIALOG);
        local stock =
        {
            704,    96,     -- Bamboo Stick
            915,    2700,   -- Toad Oil
            1134,   810,    -- Bast Parchment
            1155,   100 ,   -- Iron Sand
            657,    4690,   -- Tama-Hagane
            1415,   5147,   -- Urushi
            1161,   66,     -- Uchitake
            1164,   30,     -- Tsurara
            1167,   58,     -- Kawahori-Ogi
            1170,   58,     -- Makibishi
            1173,   56,     -- Hiraishin
            1176,   44,     -- Mizu-Deppo
            1472,   369,    -- Gardenia Seed
            1554,   431,    -- Turmeric
            1555,   1061,   -- Coriander
            1590,   536,    -- Holy Basil
            1475,   579,    -- Curry Powder
            5164,   1945,   -- Ground Wasabi
            1652,   150,    -- Rice Vinegar
            5235,   187     -- Napa
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


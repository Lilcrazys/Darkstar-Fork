-----------------------------------
-- Area: Windurst Waters
-- NPC:  Kopopo
-- Guild Merchant NPC: Cooking Guild
-- !pos -103.935 -2.875 74.304 238
-----------------------------------
package.loaded["scripts/zones/Windurst_Waters/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Waters/TextIDs");

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
    if (player:sendGuild(530,5,20,7)) then
        player:showText(npc,KOPOPO_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,KOPOPO_SHOP_DIALOG);
        local stock =
        {
            610,    45,       -- San d'Orian Flour
            611,    30,       -- Rye Flour
            612,    45,       -- Kazham Peppers
            614,    60,       -- Mhaura Garlic
            616,    60,       -- Pie Dough
            618,    21,       -- Blue Peas
            620,    45,       -- Tarutaru Rice
            621,    21,       -- Crying Mustard
            622,    36,       -- Dried Marjoram
            625,    66,       -- Apple Vinegar
            628,    195,      -- Cinnamon
            629,    36,       -- Millioncorn
            1554,   431,      -- Turmeric
            1555,   1061,     -- Coriander
            1590,   536,      -- Holy Basil
            1840,   1500,     -- Semolina
            2110,   457,      -- Fish Stock
            2111,   525,      -- Soy Stock
            2112,   530,      -- Vanilla
            4363,   33,       -- Faerie Apple
            4366,   18,       -- La Theine Cbg.
            4367,   36,       -- Batagreens
            4371,   252,      -- Grilled Hare
            4372,   83,       -- G. Sheep Meat
            4376,   90,       -- Meat Jerky
            4378,   45,       -- Selbina Milk
            4380,   437,      -- Smoked Salmon
            4381,   907,      -- Meat Mithkabob
            4389,   43,       -- San d'Or. Carrot
            4390,   51,       -- Mithran Tomato
            4392,   45,       -- Saruta Orange
            4398,   2149,     -- Fish Mithkabob
            4399,   3528,     -- Bluetail
            4406,   734,      -- Baked Apple
            4408,   106,      -- Tortilla
            4410,   626,      -- Roast Mushroom
            4412,   412,      -- Thundermelon
            4413,   240,      -- Apple Pie
            4422,   150,      -- Orange Juice
            4423,   225,      -- Apple Juice
            4424,   825,      -- Melon Juice
            4425,   240,      -- Tomato Juice
            4431,   72,       -- San d'Or. Grape
            4437,   1368,     -- Roast Mutton
            4438,   2750,     -- Dhalmel Steak
            4441,   753,      -- Grape Juice
            4442,   300,      -- Pineapple Juice
            4444,   18,       -- Rarab Tail
            4445,   41,       -- Yagudo Cherry
            4455,   368,      -- Pebble Soup
            4456,   2452,     -- Boiled Crab
            4468,   60,       -- Pamamas
            4491,   150,      -- Watermelon
            4492,   1182,     -- Puls
            4537,   967,      -- Roast Carp
            4538,   1453,     -- Roast Pipira
            4556,   10644,    -- Icecap Rolanberry
            4560,   2861,     -- Vegetable Soup
            4570,   47,       -- Bird Egg
            4571,   75,       -- Beaugreens
            4572,   1360      -- Beaugr. Saute
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
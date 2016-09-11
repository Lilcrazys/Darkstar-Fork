-----------------------------------
--  Area: Aht Urhgan Whitegate
--  NPC:  Wahnid
--  Type: Guild Merchant: Fishing Guild
-- @pos -31.720 -6.000 -94.919 50
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
    if (player:sendGuild(60426,1,18,6)) then
        player:showText(npc,WAHNID_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,WAHNID_SHOP_DIALOG);
        local stock =
        {
            4472,    30,      -- Crayfish
            5447,    21,      -- Denizanasi
            5449,    21,      -- Hamsi
            5453,    4560,    -- Istakoz
            5454,    5130,    -- Mercanbaligi
            16992,   52,      -- Slice of Bluetail
            16993,   52,      -- Peeled Crayfish
            16994,   52,      -- Slice of Carp
            16996,   52,      -- Sardine Ball
            16997,   52,      -- Crayfish Ball
            16998,   30,      -- Insect Ball
            16999,   52,      -- Trout Ball
            17000,   52,      -- Meatball
            17380,   25740,   -- Mithran Fishing Rod
            17382,   9657,    -- Single hook fishing rod
            17383,   1980,    -- Clothespole
            17387,   4077,    -- Tarutaru Fishing Rod
            17388,   934,     -- Fastwater Fishing Rod
            17389,   332,     -- Bamboo Fishing Rod
            17390,   145,     -- Yew Fishing Rod
            17391,   44,      -- Willow Fishing Rod
            17392,   213,     -- Sliced Sardine
            17393,   213,     -- Sliced Cod
            17394,   220,     -- Peeled Lobster 
            17395,   9,       -- Lugworm
            17396,   3,       -- Little Worm
            17399,   2394,    -- Sabiki Rig
            17404,   540,     -- Worm Lure
            17405,   540,     -- Fly Lure
            17407,   303      -- Minnow
            
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


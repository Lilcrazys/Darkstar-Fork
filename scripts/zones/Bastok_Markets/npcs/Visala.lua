-----------------------------------
--  Area: Bastok Markets
--  NPC: Visala
--  Guild Merchant NPC: Goldsmithing Guild 
-- !pos -202.000 -7.814 -56.823 235
-----------------------------------
package.loaded["scripts/zones/Bastok_Markets/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
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
    if (player:sendGuild(5272,8,23,4)) then
        player:showText(npc, VISALA_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,VISALA_SHOP_DIALOG);
        local stock =
        {
            640,     9,       -- Copper Ore
            642,     610,     -- Zinc Ore
            663,     20040,   -- Mythril Sheet
            673,     210,     -- Brass Scales
            681,     10500,   -- Mythril Chain
            736,     315,     -- Silver Ore
            760,     29172,   -- Silver Chain
            769,     1288,    -- Red Rock
            770,     1288,    -- Blue Rock
            771,     1288,    -- Yellow Rock
            772,     1288,    -- Green Rock
            773,     1288,    -- Translucent Rock
            774,     1288,    -- Purple Rock
            775,     1288,    -- Black Rock
            791,     23400,   -- Aquamarine
            795,     1396,    -- Lapis Lazuli
            797,     44304,   -- Painite
            799,     1396,    -- Onyx
            805,     23400,   -- Zircon
            806,     1396,    -- Tourmaline
            808,     9000,    -- Goshenite
            813,     116736,  -- Angel Stone
            815,     9000,    -- Sphene
            12961,   2380,    -- Brass Leggings
            13317,   12800,   -- Pearl Earring
            13330,   1238,    -- Tml. Earring
            13979,   20088,   -- Silver Bangles
            16407,   2399,    -- Brass Baghnakhs
            16449,   3422,    -- Brass Dagger
            17043,   735      -- Brass Hammer
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


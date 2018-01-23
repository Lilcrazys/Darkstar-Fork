-----------------------------------
-- Area: Windurst Woods
--  NPC: Shih Tayuun
-- Guild Merchant NPC: Bonecrafting Guild
-- !pos -3.064 -6.25 -131.374 241
-----------------------------------
package.loaded["scripts/zones/Windurst_Woods/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Windurst_Woods/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(514,8,23,3)) then
        player:showText(npc,SHIH_TAYUUN_DIALOG);
    end
    ]]
        player:showText(npc,SHIH_TAYUUN_DIALOG);
        local stock =
        {
            864,     72,     -- Fish Scales
            880,     59,     -- Bone Chip
            882,     150,    -- Sheep Tooth
            888,     90,     -- Seashell
            2130,    75,     -- Shagreen File
            12455,   5728,   -- Beetle Mask
            17319,   3       -- Bone Arrow
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


-----------------------------------
-- Area: Windurst Woods
--  NPC: Retto-Marutto
-- Guild Merchant NPC: Bonecrafting Guild
-- !pos -6.142 -6.55 -132.639 241
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
    if (player:sendGuild(5142,8,23,3)) then
        player:showText(npc,RETTO_MARUTTO_DIALOG);
    end
    ]]
        player:showText(npc,RETTO_MARUTTO_DIALOG);
        local stock =
        {
            2130,   75,      -- Shagreen File
            880,    150,     -- Bone Chip
            864,    96,      -- Fish Scales
            898,    1500,    -- Chicken Bone
            893,    1400,    -- Giant Femur
            889,    500,     -- Beetle Shell
            894,    1000,    -- Beetle Jaw
            895,    1800,    -- Ram Horn
            884,    2000,    -- Blk. Tiger Fang
            881,    2500,    -- Crab Shell
            885,    6000,    -- Turtle Shell
            897,    2400,    -- Scorpion Claw
            1622,   4000,    -- Bugard Tusk
            896,    3000,    -- Scorpion Shell
            2147,   4500     -- Marid Tusk
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


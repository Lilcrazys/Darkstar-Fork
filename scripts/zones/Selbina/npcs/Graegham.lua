-----------------------------------
-- Area: Selbina
-- NPC:  Graegham
-- Guild Merchant NPC: Fishing Guild
-- !pos -12.423 -7.287 8.665 248
-----------------------------------
package.loaded["scripts/zones/Selbina/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Selbina/TextIDs");

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
    if (player:sendGuild(5182,3,18,5)) then
        player:showText(npc,FISHING_SHOP_DIALOG);
    end
    ]]
        player:showText(npc,FISHING_SHOP_DIALOG);
        local stock =
        {
            4384,     13790,   -- Black Sole
            4385,     261,     -- Zafmlug Bass
            4399,     2520,    -- Bluetail
            4426,     296,     -- Tricolored Carp
            4451,     3400,    -- Silver Shark
            4461,     6048,    -- Bastore Bream
            4479,     1350,    -- Bhefhel Martin
            4483,     520,     -- Tiger Cod
            4485,     2170,    -- Noble Lady
            4500,     24,      -- Greedie
            17382,    9657,    -- Single Hook Fishing Rod
            17383,    1980,    -- Clothespole
            17387,    4077,    -- Tarutaru Fishing Rod
            17388,    1045,    -- Fastwater Fishing Rod
            17399,    2394     -- Sabiki Rig
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


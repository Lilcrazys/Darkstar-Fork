-----------------------------------
-- Area: Southern San d'Oria
--  NPC: Kueh Igunahmori
-- Guild Merchant NPC: Leathercrafting Guild
-- !pos -194.791 -8.800 13.130 230
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/conquest");
require("scripts/zones/Southern_San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(529,3,18,4)) then
        player:showText(npc,KUEH_IGUNAHMORI_DIALOG);
    end
    ]]
        player:showText(npc,KUEH_IGUNAHMORI_DIALOG);
        local stock =
        {
        505,     62,      -- Sheepskin
        695,     120,     -- Willow Log
        853,     2155,    -- Raptor Skin
        854,     2650,    -- Cockatrice Skin
        856,     45,      -- Rabbit Hide
        858,     483,     -- Wolf Hide
        859,     937,     -- Ram Skin
        861,     1312,    -- Tiger Hide
        863,     2700,    -- Coeurl Hide
        1116,    15504,   -- Manticore Hide
        2129,    75,      -- Tanning Vat
        4509,    9,       -- Distilled Water
        13192,   837,     -- Leather Belt
        13594,   132      -- Rabbit Mantle
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



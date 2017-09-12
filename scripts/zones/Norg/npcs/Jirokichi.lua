-----------------------------------
--  Area: Norg
--   NPC: Jirokichi
--  Type: Tenshodo Merchant
-- !pos -1.463 0.000 18.846 252
-----------------------------------
package.loaded["scripts/zones/Norg/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/keyitems");
require("scripts/zones/Norg/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    if (player:hasKeyItem(TENSHODO_MEMBERS_CARD)) then
        --[[
        if (player:sendGuild(60423,9,23,7)) then
            player:showText(npc, JIROKICHI_SHOP_DIALOG);
        end
        ]]
        player:showText(npc,JIROKICHI_SHOP_DIALOG);
        local stock =
        {
            16406,      14428,    -- Baghnakhs
            16411,      11746,    -- Claws
            16419,      45760,    -- Patas
            16871,      183516,   -- Kamayari
            16896,      517,      -- Kunai
            16900,      1404,     -- Wakizashi
            16917,      4226,     -- Suzume
            16919,      2728,     -- Shinobi-Gatana
            16960,      3121,     -- Uchigatana
            16966,      1836,     -- Tachi
            16975,      11583,    -- Kanesada
            16982,      4752,     -- Nodachi
            16987,      12253,    -- Okanehira
            16988,      14676,    -- Kotetsu
            17259,      72144,    -- Pirate's Gun
            17301,      29,       -- Shuriken
            17302,      347,      -- Juji Shuriken
            17320,      7,        -- Iron Arrow
            17322,      81,       -- Fire Arrow
            17802,      189945    -- Kiku-Ichimonji
            -- 16973,      ????,     -- Homura
            -- 17265,      ????,     -- Tanegashima
            -- 17267,      ????,     -- Negoroshiki
        };
        showShop(player, STATIC, stock);
    else
        -- player:startEvent(0x0096);
    end
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


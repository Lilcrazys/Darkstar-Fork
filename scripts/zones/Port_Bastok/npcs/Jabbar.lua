-----------------------------------
-- Area: Port Bastok
-- NPC: Jabbar
-- Type: Tenshodo Merchant
-- Involved in Quests: Tenshodo Menbership
-- !pos -99.718 -2.299 26.027 236
-----------------------------------
package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/zones/Port_Bastok/TextIDs");

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
        if (player:sendGuild(60419, 1, 23, 4)) then
            player:showText(npc,TENSHODO_SHOP_OPEN_DIALOG);
        end
        ]]
        player:showText(npc,TENSHODO_SHOP_OPEN_DIALOG);
        local stock =
        {
            657,    4690,     -- Tama-Hagane
            704,    96,       -- Bamboo Stick
            1475,   579,      -- Curry Powder
            1554,   431,      -- Turmeric
            1555,   1061,     -- Coriander
            1590,   536,      -- Holy Basil
            1652,   150,      -- Rice Vinegar
            4878,   37800,    -- Absorb-INT (Scroll)
            4879,   14070,    -- Absorb-MND (Scroll)
            4880,   14070,    -- Absorb-CHR (Scroll)
            4874,   37800,    -- Absorb-STR (Scroll)
            4877,   14070,    -- Absorb-AGI (Scroll)
            4876,   14070,    -- Absorb-VIT (Scroll)
            4928,   1561,     -- Katon: Ichi
            4934,   1561,     -- Huton: Ichi
            4937,   1561,     -- Doton: Ichi
            4943,   1561,     -- Suiton: Ichi
            5164,   1945,     -- Ground Wasabi
            5236,   224,      -- Shungiku
            1164,   30        -- Tsurara
        };
        showShop(player, STATIC, stock);
    elseif (player:getQuestStatus(JEUNO,TENSHODO_MEMBERSHIP) == QUEST_ACCEPTED) then
        if (player:hasKeyItem(TENSHODO_APPLICATION_FORM)) then
            player:startEvent(152);
        else
            player:startEvent(151);
        end
    else
        player:startEvent(150);
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
    if (csid == 151) then
        player:addKeyItem(TENSHODO_APPLICATION_FORM);
        player:messageSpecial(KEYITEM_OBTAINED,TENSHODO_APPLICATION_FORM);
    end
end;
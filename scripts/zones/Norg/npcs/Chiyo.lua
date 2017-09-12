-----------------------------------
--  Area: Norg
--  NPC: Chiyo
--  Type: Tenshodo Merchant
-- !pos 5.801 0.020 -18.739 252
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
        if (player:sendGuild(60422,9,23,7)) then
            player:showText(npc, CHIYO_SHOP_DIALOG);
        end
        ]]
        player:showText(npc,CHIYO_SHOP_DIALOG);
        local stock =
        {
            4876,   41370,   -- Absorb-VIT (Scroll)
            4877,   39270,   -- Absorb-AGI (Scroll)
            4878,   37800,   -- Absorb-INT (Scroll)
            4879,   14070,   -- Absorb-MND (Scroll)
            4880,   14070,   -- Absorb-CHR (Scroll)
            4928,   1561,    -- Katon: Ichi
            4931,   1747,    -- Hyoton: ichi
            4934,   1561,    -- Huton: Ichi
            4937,   1561,    -- Doton: Ichi
            4940,   1747,    -- Raiton: Ichi
            4943,   1561     -- Suiton: Ichi
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


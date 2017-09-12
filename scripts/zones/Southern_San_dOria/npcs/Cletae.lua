-----------------------------------
-- Area: Southern San d'Oria
-- NPC: Cletae
-- Guild Merchant NPC: Leathercrafting Guild
-- !pos -189.142 -8.800 14.449 230
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/globals/conquest");
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (FlyerForRegine == 1) then
        count = trade:getItemCount();
        MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
            player:messageSpecial(FLYER_REFUSED);
        end
    end


end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    --[[
    if (player:sendGuild(5292,3,18,4)) then
        player:showText(npc,CLETAE_DIALOG);
    end
    ]]
        player:showText(npc,CLETAE_DIALOG);
        local stock =
        {
            2129,    75,       -- Tanning Vat
            505,     100,      -- Sheepskin
            856,     80,       -- Rabbit Hide
            852,     600,      -- Lizard Skin
            878,     600,      -- Karakul Skin
            858,     600,      -- Wolf Hide
            857,     2400,     -- Dhalmel Hide
            1640,    2500,     -- Bugard Skin
            859,     1500,     -- Ram Skin
            1628,    16000,    -- Buffalo Hide
            853,     3000,     -- Raptor Skin
            2123,    2500,     -- Catoblepas Hide
            2518,    3000,     -- Smilodon Hide
            854,     3000      -- Cocatrice Skin
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



-----------------------------------
-- Area: Bibiki Bay
-- NPC:  Mep Nhapopoluko
-- Type: Guild Merchant NPC (Fishing Guild)
-- !pos 464.350 -6 752.731 4
-----------------------------------
package.loaded["scripts/zones/Bibiki_Bay/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/globals/shop");
require("scripts/zones/Bibiki_Bay/TextIDs");

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
    if (player:sendGuild(519,1,18,5)) then
        player:showText(npc, MEP_NHAPOPOLUKO_DIALOG);
    end
    ]]
        player:showText(npc,MEP_NHAPOPOLUKO_DIALOG);
        local stock =
        {
            624,    24,     -- Pamtam Kelp
            4314,   300,    -- Bibikibo
            4317,   120,    -- Trilobite
            4318,   3375,   -- Bibiki Urchin
            4385,   115,    -- Zafmlug Bass
            4399,   1350,   -- Bluetail
            4443,   24,     -- Cobalt Jellyfish
            4484,   1350,   -- Shall Shell
            4485,   2100,   -- Noble Lady
            17382,  11845,  -- Single Hook Fishing Rod
            17388,  1238,   -- Fastwater Fishing Rod
            5121,   2142    -- Moorish Idol
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


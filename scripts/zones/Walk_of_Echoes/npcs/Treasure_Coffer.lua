-----------------------------------
-- Area: Walk Of Echoes
--  NPC: Treasure Coffer
-- @pos -414 14 -60 182
-----------------------------------
package.loaded["scripts/zones/Walk_of_Echoes/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Walk_of_Echoes/TextIDs");
-- require("scripts/globals/Walk_of_Echoes");
require("scripts/globals/status");
--201
-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------
function Get_WoE_Loot(player)
end

function onTrigger(player,npc)
    --[[ Score system: 
        normal mobs each kill gains score = 5+(flux number*5)
        boss mobs each kill = 100+(flux number*20)

        Examples:
        flux 1 mob is worth 10, and flux 15 mob is worth 80
        flux 1 boss is worth 120, and flux 15 boss is worth 400

        Low score is 100-999..less than 100 does not qualify for items.
        High scores are 1000+ and use better item table.
    ]]
    local LowScoreTreasureTable =
    {
        -- [slot] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [1] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [2] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [3] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [4] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [5] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID}
    };
    local HighScoreTreasureTable =
    {
        -- [slot] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [1] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [2] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [3] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [4] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [5] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [6] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [7] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [8] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [9] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID},
        [10] = {item1=ID,item2=ID,item3=ID,item4=ID,item5=ID}
    }
    -- even numbered slots *65536 the itemID
    local slot1 = player:getVar("WoE_Coffer_Slot_01");
    local slot2 = player:getVar("WoE_Coffer_Slot_02");
    local slot3 = player:getVar("WoE_Coffer_Slot_03");
    local slot4 = player:getVar("WoE_Coffer_Slot_04");
    local slot5 = player:getVar("WoE_Coffer_Slot_05");
    local slot6 = player:getVar("WoE_Coffer_Slot_06");
    local slot7 = player:getVar("WoE_Coffer_Slot_07");
    local slot8 = player:getVar("WoE_Coffer_Slot_08");
    local slot9 = player:getVar("WoE_Coffer_Slot_09");
    local slot10 = player:getVar("WoE_Coffer_Slot_10");
    
    local param1 = 0x00000000;
    local param2 = slot1+slot2;
    local param3 = slot3+slot4;
    local param4 = slot5+slot6;
    local param5 = slot7+slot8;
    local param6 = slot9+slot10;
    local menuMask = 0x00000000;
    local param8 = 0xFFFFFFFF;

    player:startEvent(1601, param1, param2, param3, param4, param5, param6, menuMask, param8);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    player:PrintToPlayer("onEventUpdate CSID: "..csid);
    player:PrintToPlayer("onEventUpdate RESULT: "..option);
    if (csid == 1601) then
        if (option == 1) then
            -- give item in slot 1
        elseif (option == 2) then
            -- give item in slot 2
        elseif (option == 3) then
            -- give item in slot 3
        elseif (option == 4) then
            -- give item in slot 4
        elseif (option == 5) then
            -- give item in slot 5
        elseif (option == 6) then
            -- give item in slot 6
        elseif (option == 7) then
            -- give item in slot 7
        elseif (option == 8) then
            -- give item in slot 8
        elseif (option == 9) then
            -- give item in slot 9
        elseif (option == 10) then
            -- give item in slot 10
        elseif (option == 11) then
            -- destroy all
        elseif (option == 12) then
            -- take all
        end
    end
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    player:PrintToPlayer("onEventFinish CSID: "..csid);
    player:PrintToPlayer("onEventFinish RESULT: "..option);
end;

-----------------------------------
-- Area: North Gustaberg
--  NPC: Planar Rift
-----------------------------------
package.loaded["scripts/zones/North_Gustaberg/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/status");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
require("scripts/zones/North_Gustaberg/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;


-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local VW_BASTOK_ABYSSITE = {INDIGO_STRATUM_ABYSSITE,INDIGO_STRATUM_ABYSSITE_II,INDIGO_STRATUM_ABYSSITE_III,INDIGO_STRATUM_ABYSSITE_IV}
    local INDIGO = false;
    for index, value in ipairs(VW_BASTOK_ABYSSITE) do
        if (player:hasKeyItem(value)) then
            INDIGO = true;
        end
    end

    if (INDIGO == true) then
        -- NOTE: I'm only requiring 1 person (the popper) to have the voidstone+abyssite, per pop.
        -- I know this isn't what retail does. Retail also lets them gain more than 1 per day too.
        -- In the mobs onMobDeath script, we can easily make the popper 100% upgrade rate and everyone else less, if desired.
        if (player:getCurrency("voidstones") > 0) then
            player:startEvent(6000, 7);
        else
            player:startEvent(6000, 2);
        end
    else
        player:startEvent(6000);
    end
end;


-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID2: %u",csid);
    -- printf("RESULT2: %u",option);
end;


-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
    -- NOTE: I'm only requiring 1 person (the popper) to have the voidstone, per pop.
    -- I know this isn't what retail does. Retail also lets them gain more than 1 per day too.
    if (cs == 6000 and option == 1) then
        -- Determine which NM to pop..You might also need to check WHICH rift this is using npc:getXPos() npc:getYPos() and npc:getZPos()...
        -- Can do this either by KI checks, in descending order (check the teir IV startum first)
        -- or by using player:getVar("VW_OP_BASTOK");  (see the script for Voidwatch Officer in Bastok Markets).
        -- This block on note scan be removed once we have these up and running.

        --if () then
            -- player:delCurrency("voidstones", 1);
            -- player:setLocalVar("VW_POPPER"); -- optional! Allows mob to know who spawned it!
            -- spawn the mob!
        --elseif () then
            -- player:delCurrency("voidstones", 1);
            -- player:setLocalVar("VW_POPPER"); -- optional!
            -- spawn the mob!
        --elseif () then
            -- player:delCurrency("voidstones", 1);
            -- player:setLocalVar("VW_POPPER"); -- optional!
            -- spawn the mob!
        --end
    end
end;
-----------------------------------
-- Area: King_Ranperres_Tomb
--  NPC: Planar Rift
-----------------------------------
package.loaded["scripts/zones/King_Ranperres_Tomb/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/zones/King_Ranperres_Tomb/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local STRATUM = player:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_IV);

    if (STRATUM == true) and npc:getXPos(-115) and npc:getYPos(9) and npc:getZPos(60)  then
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
        if (player:hasKeyItem(CRIMSON_STRATUM_ABYSSITE_IV)) then
            player:delCurrency("voidstones", 1);
            SpawnMob(17555901, 300):updateClaim(player);
        end
    end
end;
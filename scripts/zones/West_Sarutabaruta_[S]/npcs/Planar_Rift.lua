-----------------------------------
-- Area: West_Sarutabaruta_[s]
--  NPC: Planar Rift
-----------------------------------
package.loaded["scripts/zones/West_Sarutabaruta_[s]/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/zones/West_Sarutabaruta_[s]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local STRATUM = player:hasKeyItem("JADE_STRATUM_ABYSSITE");

    if (STRATUM == true) and npc:getXPos(120) and npc:getYPos(4) and npc:getZPos(-440)  then
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
        if (palyer:hasKeyItem("JADE_STRATUM_ABYSSITE")) then
            player:delCurrency("voidstones", 1);
            SpawnMob(17167113, 300):updateClaim(player);
        end
    end
end;
-----------------------------------
-- Area: Misareaux_Coast
--  NPC: Planar Rift
-----------------------------------
package.loaded["scripts/zones/Misareaux_Coast/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/zones/Misareaux_Coast/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local STRATUM = player:hasKeyItem(HYACINTH_STRATUM_ABYSSITE);
    local mobID = 16879901, 16879903;
    local mobNotUp = false
    local correctNPC = false

    if (GetMobAction(mobID) == ACTION_NONE or GetMobAction(mobID) == ACTION_SPAWN) then
        mobNotUp = true;
    end

    if (npc:getXPos(443) and npc:getYPos(-15) and npc:getZPos(126)) then
        correctNPC = true;
    end

    if (STRATUM == true and mobNotUp == true and correctNPC == true) then
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
    if (csid == 6000 and option == 1) then
        player:delCurrency("voidstones", 1);
        SpawnMob(16879901):updateClaim(player);
        SpawnMob(16879902):updateClaim(player);
        SpawnMob(16879903):updateClaim(player);
    end
end;
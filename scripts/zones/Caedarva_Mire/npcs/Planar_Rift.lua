-----------------------------------
-- Area: Caedarva_Mire
--  NPC: Planar Rift
-----------------------------------
package.loaded["scripts/zones/Caedarva_Mire/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/keyitems");
require("scripts/zones/Caedarva_Mire/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    local STRATUM = player:hasKeyItem(AMBER_STRATUM_ABYSSITE);
    local mobID = 17101218, 17101224;
    local mobNotUp = false
    local correctNPC = false

    if (GetMobAction(mobID) == ACTION_NONE or GetMobAction(mobID) == ACTION_SPAWN) then
        mobNotUp = true;
    end

    if (npc:getXPos(259) and npc:getYPos(-4) and npc:getZPos(-732)) then
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
        SpawnMob(17101218):updateClaim(player);
        SpawnMob(17101219):updateClaim(player);
        SpawnMob(17101220):updateClaim(player);
        SpawnMob(17101221):updateClaim(player);
        SpawnMob(17101222):updateClaim(player);
        SpawnMob(17101223):updateClaim(player);
        SpawnMob(17101224):updateClaim(player);
    end
end;
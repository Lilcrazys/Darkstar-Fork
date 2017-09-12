-----------------------------------
-- Area: Al'Taieu
--  NPC: ??? (Jailer of Hope Spawn)
-- Allows players to spawn the Jailer of Hope by trading the First Virtue, Deed of Placidity and HQ Phuabo Organ to a ???.
-- !pos -693 -1 -62 33
-----------------------------------
package.loaded["scripts/zones/AlTaieu/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/AlTaieu/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- Trade the First Virtue, Deed of Placidity and HQ Phuabo Organ
    --[[
    if (GetMobAction(16912838) == 0 and trade:hasItemQty(1850,1) and trade:hasItemQty(1851,1) and trade:hasItemQty(1852,1) and trade:getItemCount() == 3) then
        player:tradeComplete();
        SpawnMob(16912838):updateClaim(player); -- Spawn Jailer of Hope
    end
    ]]--

    if (trade:hasItemQty(1850,1) == false or trade:hasItemQty(1851,1) == false or trade:hasItemQty(1852,1) == false) then
        player:startEvent(1010, 1850 ,1851 ,1852);
    elseif (GetMobAction(16912838) == ACTION_NONE) then
        if (trade:hasItemQty(1850,1) and trade:hasItemQty(1851,1) and trade:hasItemQty(1852,1) and trade:getItemCount() == 3) then
            SpawnMob(16912838):updateClaim(player);
            player:tradeComplete();
        end
    end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("onUpdate CSID: %u",csid);
    -- printf("onUpdate RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("onFinish CSID: %u",csid);
    -- printf("onFinish RESULT: %u",option);
end;

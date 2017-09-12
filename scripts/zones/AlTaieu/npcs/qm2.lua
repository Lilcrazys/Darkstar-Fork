-----------------------------------
-- Area: Al'Taieu
--  NPC: ??? (Jailer of Justice Spawn)
-- Allows players to spawn the Jailer of Justice by trading the Second Virtue, Deed of Moderation, and HQ Xzomit Organ to a ???.
-- !pos , -278 0 -463
-----------------------------------
package.loaded["scripts/zones/AlTaieu/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/AlTaieu/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    --[[
    -- Trade the Second Virtue, Deed of Moderation, and HQ Xzomit Organ
    if (GetMobAction(16912839) == 0 and trade:hasItemQty(1853,1) and trade:hasItemQty(1854,1) and trade:hasItemQty(1785,1) and
    trade:getItemCount() == 3) then
        player:tradeComplete();
        SpawnMob(16912839):updateClaim(player); -- Spawn Jailer of Justice
    end
    ]]

    if (trade:hasItemQty(1853,1) == false or trade:hasItemQty(1854,1) == false or trade:hasItemQty(1855,1) == false) then
        player:startEvent(1010, 1853 ,1854 ,1785);
    elseif (GetMobAction(16912839) == ACTION_NONE) then
        if (trade:hasItemQty(1853,1) and trade:hasItemQty(1854,1) and trade:hasItemQty(1855,1) and trade:getItemCount() == 3) then
            SpawnMob(16912839, 300):updateClaim(player);
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

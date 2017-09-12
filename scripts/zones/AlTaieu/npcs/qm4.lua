-----------------------------------
-- Area: Al'Taieu
--  NPC: ??? (Jailer of Love and Absolute Virtue Spawn)
-- Allows players to spawn the Jailer of Love by trading the Fourth Virtue, Fifth Virtue and Sixth Virtue to a ???.
-- Allows players to spawn Absolute Virtue by killing Jailer of Love.
-- !pos , 431 -0 -603
-----------------------------------
package.loaded["scripts/zones/AlTaieu/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/AlTaieu/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- Trade the Fourth Virtue, Fifth Virtue and Sixth Virtue
    --[[
    if (GetMobAction(16912848) == 0 and GetMobAction(16912876) == 0 and trade:hasItemQty(1848,1) and trade:hasItemQty(1847,1) and 
    trade:hasItemQty(1849,1) and trade:getItemCount() == 3) then
        player:tradeComplete();
        SpawnMob(16912848):updateClaim(player); -- Spawn Jailer of Love
    end
    ]]
    if (trade:hasItemQty(1848,1) == false or trade:hasItemQty(1847,1) == false or trade:hasItemQty(1849,1) == false) then
        player:startEvent(1010, 1848 ,1847 ,1849);
    elseif (GetMobAction(16912848) == ACTION_NONE) then
        if (trade:hasItemQty(1848,1) and trade:hasItemQty(1847,1) and trade:hasItemQty(1849,1) and trade:getItemCount() == 3) then
            SpawnMob(16912848):updateClaim(player);
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

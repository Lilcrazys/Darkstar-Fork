-----------------------------------
-- Zone: Glacier
-- NPC: ??? / Freezing_Circle
-- Spawns: Umagrhk
-----------------------------------
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (GetMobAction(17232883) == ACTION_NONE) then -- mob not already spawned from this
        if (trade:hasItemQty(2956,99) and trade:getItemCount() == 99) then -- Player has all the required items.
            SpawnMob(17232883):updateClaim(player); -- pop
            player:tradeComplete(); -- done
        end
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("updateRESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("finishRESULT: %u",option);
end;

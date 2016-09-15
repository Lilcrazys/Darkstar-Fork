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
    if (GetMobAction(17232894) == ACTION_NONE) then -- mob not already spawned from this
        if (trade:hasItemQty(2956,99) and trade:getItemCount() == 99) then -- Player has all the required items.
            SpawnMob(17232894, 300):updateClaim(player); -- pop
            player:tradeComplete(); -- done
        end
    end
end;
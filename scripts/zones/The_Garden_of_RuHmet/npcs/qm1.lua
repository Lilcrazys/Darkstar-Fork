-----------------------------------
-- Area: The_Garden_of_RuHmet
-- NPC:  ??? (Jailer of Fortitude Spawn)
-- Allows players to spawn the Jailer of Fortitude by trading 12 Ghrah M Chips to a ???.
-- @pos random ,-420 0 755, -43,0.00,460, -260,0.00,44.821, -580,0.00,43, -796,0.00,460
-----------------------------------
package.loaded["scripts/zones/The_Garden_of_RuHmet/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/The_Garden_of_RuHmet/TextIDs");
require("scripts/zones/The_Garden_of_RuHmet/MobIDs");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- Trade 12 Ghrah M Chips
    if (GetMobAction(16921015) == ACTION_NONE) then
        if (trade:hasItemQty(1872,12) and trade:getItemCount() == 12) then
            SpawnMob(16921015, 300):updateEnmity(player);
            SpawnMob(16921016, 300):updateEnmity(player);
            SpawnMob(16921017, 300):updateEnmity(player);
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
--printf("onUpdate CSID: %u",csid);
--printf("onUpdate RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
--printf("onFinish CSID: %u",csid);
--printf("onFinish RESULT: %u",option);
end;
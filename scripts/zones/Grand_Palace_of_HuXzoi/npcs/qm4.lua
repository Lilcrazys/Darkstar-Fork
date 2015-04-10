-----------------------------------
-- Area: Grand Palace of Hu'Xzoi
-- NPC:  ??? Ix'aern (Monk)

-----------------------------------
package.loaded["scripts/zones/AlTaieu/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/AlTaieu/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)

    if (trade:hasItemQty(1900,3) == false) then
        player:startEvent(1010, 1900);
    elseif (GetMobAction(16916815) == ACTION_NONE) then
        if (trade:hasItemQty(1900,3) and trade:getItemCount() == 3) then
            SpawnMob(16916815, 300):updateEnmity(player);
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
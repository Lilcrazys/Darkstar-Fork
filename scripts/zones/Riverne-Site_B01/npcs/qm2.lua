-----------------------------------
-- Area: Riverne B-01
-- NPC:  ??? Bahamut
-----------------------------------
package.loaded["scripts/zones/Riverne-Site_B01/TextIDs"] = nil;
-----------------------------------

require("scripts/globals/settings");
require("scripts/zones/Riverne-Site_B01/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (trade:hasItemQty(269,1) == false or trade:hasItemQty(279,1) == false or trade:hasItemQty(280,1) == false) then
        player:startEvent(1010, 269 ,279 ,280);
    elseif (GetMobAction(16896157) == ACTION_NONE) then
        if (trade:hasItemQty(269,1) and trade:hasItemQty(279,1) and trade:hasItemQty(280,1) and trade:getItemCount() == 3) then
            SpawnMob(16896157, 300):updateEnmity(player);
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
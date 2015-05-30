-----------------------------------
-- Area: Hazhalm
-- NPC:  ??? to spawn Odin or Alex
-----------------------------------
package.loaded["scripts/zones/Hazhalm_Testing_Grounds/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Hazhalm_Testing_Grounds/TextIDs");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    if (GetMobAction(17097270) == ACTION_NONE) then  -- Odin
        if (trade:hasItemQty(270,1) and  trade:getItemCount() == 1) then
            SpawnMob(17097270, 300):updateClaim(player);
            player:tradeComplete();
        end
    elseif (GetMobAction(17097717) == ACTION_NONE) then -- Alex
        if (trade:hasItemQty(271,1) and  trade:getItemCount() == 1) then
            SpawnMob(17097717, 300):updateClaim(player);
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
end;

-----------------------------------
-- onEventFinish Action
-----------------------------------

function onEventFinish(player,csid,option)
end;
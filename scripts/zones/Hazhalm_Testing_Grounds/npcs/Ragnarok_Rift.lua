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
    local ODIN_ACTION = GetMobAction(17097716);
    local ALEX_ACTION = GetMobAction(17097717);
    if (trade:hasItemQty(270,1) and trade:getItemCount() == 1) then
        if (ODIN_ACTION == ACTION_NONE or ODIN_ACTION == ACTION_SPAWN) then
            SpawnMob(17097716, 300):updateClaim(player);
            player:tradeComplete();
        end
    elseif (trade:hasItemQty(271,1) and trade:getItemCount() == 1) then
        if (ALEX_ACTION == ACTION_NONE or ALEX_ACTION == ACTION_SPAWN) then
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

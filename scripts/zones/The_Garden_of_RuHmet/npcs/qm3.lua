-----------------------------------
-- Area: The_Garden_of_RuHmet
-- NPC:  ??? (Jailer of Faith Spawn)
-- Allows players to spawn the Jailer of Faith by trading 1 High-Quality Euvhi Organ to a ???.
-- @pos -260 0 -645
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
    --[[
     --Trade 1 High-Quality Euvhi Organ
    if (GetMobAction(Jailer_of_Faith) == 0 and trade:hasItemQty(1899,1) and trade:getItemCount() == 1) then
        local qm3 = GetNPCByID(Jailer_of_Faith_QM);
        player:tradeComplete();
        -- Hide the ???
        qm3:setStatus(STATUS_DISAPPEAR);
        -- Change MobSpawn to ???'s @pos.
        GetMobByID(Jailer_of_Faith):setSpawn(qm3:getXPos(),qm3:getYPos(),qm3:getZPos());
        -- Spawn Jailer of Faith
        SpawnMob(Jailer_of_Faith):updateClaim(player);
    end
    ]]

     --Trade 1 High-Quality Euvhi Organ
    if (GetMobAction(16921021) == 0 and trade:hasItemQty(1899,1) and trade:getItemCount() == 1) then
        GetMobByID(16921021):setSpawn(npc:getXPos(),npc:getYPos(),npc:getZPos());
        SpawnMob(16921021):updateClaim(player); -- Spawn Jailer of Faith
        player:tradeComplete();
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

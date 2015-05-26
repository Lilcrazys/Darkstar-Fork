-----------------------------------
-- Crab Loot Box
-- Custom treasure box NPC
-----------------------------------
package.loaded["scripts/zones/Rolanberry_Fields_[S]/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Rolanberry_Fields_[S]/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
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
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- print("CSID:",csid);
    -- print("RESULT:",option);
end;
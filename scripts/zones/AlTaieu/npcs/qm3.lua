-----------------------------------
-- Area: Al'Taieu
--  NPC: ??? (Jailer of Prudence Spawn)
-- Allows players to spawn the Jailer of Prudence by trading the Third Virtue, Deed of Sensibility, and High-Quality Hpemde Organ to a ???.
-- !pos , 706 -1 22
-----------------------------------
package.loaded["scripts/zones/AlTaieu/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/AlTaieu/TextIDs");
require("scripts/zones/AlTaieu/mobIDs");
require("scripts/globals/status");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- Trade the Third Virtue, Deed of Sensibility, and High-Quality Hpemde Organ
    --[[
    if (GetMobAction(16912846) == 0 and GetMobAction(16912847) == 0 and trade:hasItemQty(1856,1) and trade:hasItemQty(1870,1) and 
    trade:hasItemQty(1871,1) and trade:getItemCount() == 3) then
        player:tradeComplete();
        SpawnMob(PrudenceOne):updateClaim(player); -- Spawn Jailer of Prudence 1
        SpawnMob(PrudenceTwo);                     -- Spawn Jailer of Prudence 2 unclaimed
    end
    ]]
    if (trade:hasItemQty(1856,1) == false or trade:hasItemQty(1870,1) == false or trade:hasItemQty(1871,1) == false) then
        player:startEvent(1010, 1856 ,1870 ,1871);
    elseif (GetMobAction(16912846) == ACTION_NONE) and GetMobAction(16912847) == 0 then
        if (trade:hasItemQty(1856,1) and trade:hasItemQty(1870,1) and trade:hasItemQty(1871,1) and trade:getItemCount() == 3) then
            SpawnMob(16912846):updateClaim(player);
            SpawnMob(16912847):updateEnmity(player);
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

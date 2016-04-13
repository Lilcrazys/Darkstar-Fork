-----------------------------------
-- Zone: Abyssea-Attohwa
--  NPC: MOUNTAIN_WARP
-- Custom NPC to teleport
-- player to the top of mountain
-- @pos 212 20.25 0
-----------------------------------


-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    player:setPos(292, -22.5, 22, 32);
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:PrintToPlayer("To go up the mountain, trade me anything. Items will not be consumed.");
    player:PrintToPlayer("To get back down, walk off the WEST side and use the conflux.");
end;

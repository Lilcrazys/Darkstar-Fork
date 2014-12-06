---------------------------------------------------------------------------------------------------
-- func: @npchere <npcId>
-- auth: TeoTwawki
-- desc: Spawns a NPC and then moves it to the current position, if in same zone.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "i"
};

function onTrigger(player, npcId)

    if (npcId == nil) then
        player:PrintToPlayer("You must enter a valid npcID.");
        return;
    end

    SpawnMob( npcId );

    local npc = GetNPCByID(npcId);

    if (player:getZone() == npc:getZone()) then
        npc:setPos( player:getXPos(), player:getYPos(), player:getZPos(), 0, player:getZone() );
    else
        player:PrintToPlayer("NPC could not be moved to current pos - you are probably in the wrong zone.");
    end

end;
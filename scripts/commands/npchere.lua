---------------------------------------------------------------------------------------------------
-- func: npchere <npcId>
-- desc: Spawns an NPC and then moves it to the current position, if in same zone.
--       Errors will despawn the NPC unless "noDepop" was specified (any value works).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function onTrigger(player, npcId, noDepop)
    require("scripts/globals/status");

    if (npcId == nil) then
        player:PrintToPlayer("You must enter a valid npcId.");
        return;
    end

    local npc = GetNPCByID(npcId);
    if (npc == nil) then
        player:PrintToPlayer( string.format( "NPC with ID '%i' not found!", npcId ) );
        return;
    end

    if (player:getZoneID() == npc:getZoneID()) then
        npc:setPos( player:getXPos(), player:getYPos(), player:getZPos(), player:getRotPos(), player:getZoneID() );
        npc:setStatus(STATUS_NORMAL);
    else
        if (noDepop == nil or noDepop == 0) then
            npc:setStatus(STATUS_DISAPPEAR);
            player:PrintToPlayer("Despawned the NPC because of an error.");
        end
        player:PrintToPlayer("NPC could not be moved to current pos - you are probably in the wrong zone.");
    end

    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/npchere.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "NPC ID: ".. npcId,
    "\n", "Position: ".. player:getXPos().." ".. player:getYPos().." ".. player:getZPos(),
    "\n", "Zone ID: ".. GetNPCByID(npcId):getZoneID(),
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
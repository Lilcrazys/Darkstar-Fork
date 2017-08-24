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

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!npchere {npcID} {noDepop}");
end;

function onTrigger(player, npcId, noDepop)
    require("scripts/globals/status");

    -- validate npc
    local targ;
    if (npcId == nil) then
        targ = player:getCursorTarget();
        if (targ == nil or not targ:isNPC()) then
            error(player, "You must either provide an npcID or target an NPC.");
            return;
        end
    else
        targ = GetNPCByID(npcId);
        if (targ == nil) then
            error(player, "Invalid npcID.");
            return;
        end
    end

    if (player:getZoneID() == targ:getZoneID()) then
        targ:setPos( player:getXPos(), player:getYPos(), player:getZPos(), player:getRotPos(), player:getZoneID() );
        targ:setStatus(STATUS_NORMAL);
    else
        if (noDepop == nil or noDepop == 0) then
            targ:setStatus(STATUS_DISAPPEAR);
            player:PrintToPlayer("Despawned the NPC because of an error.");
        end
        player:PrintToPlayer("NPC could not be moved to current pos - you are probably in the wrong zone.");
    end

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/npchere.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "NPC ID: ".. targ:getID(),
    "\n", "Position: ".. player:getXPos().." ".. player:getYPos().." ".. player:getZPos(),
    "\n", "Zone ID: ".. targ:getZoneID(),
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
---------------------------------------------------------------------------------------------------
-- func: bring <player>
-- desc: Brings the target to the player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@bring <player>");
end;

function onTrigger(player, target)
    -- validate target
    if (target == nil) then
        error(player, "You must enter a target player name.");
        return;
    end
    local targ = GetPlayerByName( target );
    if (targ == nil) then
        error(player, string.format( "Player named '%s' not found!", target ) );
    end
    
    -- bring target
    if (targ:getZoneID() == player:getZoneID()) then
        targ:setPos( player:getXPos(), player:getYPos(), player:getZPos(), player:getRotPos() );
    else
        targ:setPos( player:getXPos(), player:getYPos(), player:getZPos(), player:getRotPos(), player:getZoneID() );
    end

    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/bring.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. target,
    "\n", "Zone ID: ".. player:getZoneID(),
    "\n", "Position: ".. player:getXPos().." ".. player:getYPos().." ".. player:getZPos(),
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end
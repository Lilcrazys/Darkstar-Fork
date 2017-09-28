---------------------------------------------------------------------------------------------------
-- func: goto
-- desc: Goes to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "si"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!goto <player> {forceZone}");
end;

function onTrigger(player, target, forceZone)

    -- validate target
    if (target == nil) then
        error(player, "You must enter a player name.");
        return;
    end
    local targ = GetPlayerByName( target );
    if (targ == nil) then
        error(player, string.format( "Player named '%s' not found!", target ) );
        return;
    end

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/goto.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Went to: ".. target,
    "\n", "pos: ".. targ:getXPos().." ".. targ:getYPos().." ".. targ:getZPos().." ".. targ:getZoneID(),
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();

    -- validate forceZone
    if (forceZone ~= nil) then
        if (forceZone ~= 0 and forceZone ~= 1) then
            error(player, "If provided, forceZone must be 1 (true) or 0 (false).");
            return;
        end
    else
        forceZone = 1;
    end

    -- goto target
    if (targ:getZoneID() ~= player:getZoneID() or forceZone == 1) then
        player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos(), targ:getRotPos(), targ:getZoneID() );
    else
        player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos(), targ:getRotPos() );
    end
end
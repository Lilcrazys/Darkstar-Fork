---------------------------------------------------------------------------------------------------
-- func: logoff
-- desc: Logs the target player off by force.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@logoff {player}");
end;

function onTrigger(player, target)
    -- validate target
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName( target );
        if (targ == nil) then
            error(player, string.format( "Invalid player '%s' given.", target ) );
            return;
        end
    end

    -- logoff target
    targ:leavegame();
    if (targ:getID() ~= player:getID()) then
        player:PrintToPlayer(string.format("%s has been logged off.",targ:getName()));
    end

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/logoff.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end
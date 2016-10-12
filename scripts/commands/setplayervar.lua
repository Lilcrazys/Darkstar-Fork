---------------------------------------------------------------------------------------------------
-- func: setplayervar
-- desc: Sets a variable on the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "ssi"
};

function onTrigger(player, target, variable, value)
    if (target == nil or variable == nil) then
        player:PrintToPlayer("You must enter a valid target name and variable name.");
        return;
    end

    if (value == nil) then
        player:PrintToPlayer("You must enter a number to set the variable's value to.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        targ:setVar(variable, value);
        player:PrintToPlayer( string.format( "Set %s to %u for %s", variable, value, target ) );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end

    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/setplayervar.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. target,
    "\n", "VarName: ".. variable,
    "\n", "VarValue: ".. value,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end
---------------------------------------------------------------------------------------------------
-- func: setplayerlevel
-- desc: Sets the target players level.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "si"
};

function onTrigger(player, target, level)
    if (target == nil) then
        target = player:getName();
    end

    if (level == nil or level < 1 or level > 99) then
        player:PrintToPlayer("You must enter a valid level between 1 and 99.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/setplayerlevel.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. target,
        "\n", "Level: ".. level,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();

        targ:setLevel( level );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end
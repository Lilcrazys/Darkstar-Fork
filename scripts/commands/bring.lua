---------------------------------------------------------------------------------------------------
-- func: bring <player>
-- desc: Brings the target to the player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:PrintToPlayer("You must enter a target player name.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        targ:setPos( player:getXPos(), player:getYPos(), player:getZPos(), 0, player:getZoneID() );

        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/bring.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. target,
        "\n", "Position: ".. player:getXPos().." ".. player:getYPos().." ".. player:getZPos(),
        "\n", "Zone ID: ".. player:getZoneID(),
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end
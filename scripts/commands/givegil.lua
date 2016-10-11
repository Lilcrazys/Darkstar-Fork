---------------------------------------------------------------------------------------------------
-- func: givegil <amount> <player>
-- desc: Gives the specified amount of gil to GM or target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function onTrigger(player, amount, target)
    if (amount == nil) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer( "@givegil <amount> <player>" );
        return;
    end

    local targName;
    if (target == nil) then
        player:addGil(amount);
        targName = player:getName();
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            targ:addGil(amount);
            targName = target;
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@givegil <amount> <player>" );
        end
    end

    if (targName ~= nil) then
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/givegil.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. targName,
        "\n", "Gil given: ".. amount,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();
    end
end;
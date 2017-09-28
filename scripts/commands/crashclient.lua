---------------------------------------------------------------------------------------------------
-- func: crashclient
-- desc: crashed target player's client
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:PrintToPlayer("Must specify a valid online player name. ");
        player:PrintToPlayer("@crashclient <target> ");
        return;
    end

    local targ = GetPlayerByName(target);
    if (targ == nil) then
        player:PrintToPlayer(string.format("Player %s not found online in this map server. ", target));
    else
        -- Crash client here using bad menu packet
        targ:sendMenu(2);

        -- Log it
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/crashclient.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. target,
        "\n" -- This MUST be final line.
        );
        file:close();
    end
end;

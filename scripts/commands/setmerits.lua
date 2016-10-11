---------------------------------------------------------------------------------------------------
-- func: setmerits <amount> <player>
-- desc: Sets the target players merit count.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function onTrigger(player, amount, target)
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
    end

    if (amount == nil) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer("@setmerits <amount> <player>");
        return;
    end

    if (targ == nil) then
        player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        player:PrintToPlayer("@setmerits <amount> <player>");
        return;
    end

    targ:setMerits(amount);

    -- We only care to log this if GM is giving OTHERS merits..
    if (target ~= nil) then
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/setmerits.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. target,
        "\n", "Merits given: ".. amount,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();
    end
end;

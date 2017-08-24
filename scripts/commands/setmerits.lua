---------------------------------------------------------------------------------------------------
-- func: setmerits <amount> <player>
-- desc: Sets the target players merit count.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!setmerits <amount> {player}");
end;

function onTrigger(player, amount, target)

    -- validate amount
    if (amount == nil or amount < 0) then
        error(player, "Invalid amount.");
        return;
    end

    -- validate target    
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target));
            return;
        end
    end

    -- set merits
    targ:setMerits(amount);
    player:PrintToPlayer( string.format("%s now has %i merits.", targ:getName(), targ:getMeritCount() ) );


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
        "\n", "Target: ".. targ:getName(),
        "\n", "Merits given: ".. amount,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();
    end
end;
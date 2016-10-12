---------------------------------------------------------------------------------------------------
-- func: addcurrency <currency type> <amount> <target player>
-- desc: Adds the specified currency to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "sis"
};

function onTrigger(player,currency,amount,target)
    local targ = nil

    if (currency == nil or amount == nil) then
        player:PrintToPlayer( "You must enter a valid currency and amount." );
        player:PrintToPlayer( "@addcurrency <currency type> <amount> <target player>" );
        return
    end

    -- "target" will only be nil if no target was specified
    -- "targ" will only be nil if an invalid target was specified
    if (target ~= nil) then
        targ = GetPlayerByName(target);
    else
        targ = player;
    end

    if (targ == nil) then
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        return
    end

    -- Making sure currency type valid before adding.
    if (targ:getCurrency(currency) ~= nil) then
        targ:addCurrency(currency,amount);

        local targName;
        if (target ~= nil and targ ~= nil) then
            targName = target;
        else
            targName = player:getName();
        end
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/addcurrency.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. targName,
        "\n", "Currency type: ".. currency,
        "\n", "Amount given: ".. amount,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();
    else
        player:PrintToPlayer( string.format( "Currency of type '%s' not found!", currency ) );
    end

end;
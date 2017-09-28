---------------------------------------------------------------------------------------------------
-- func: addcurrency <currency type> <amount> <target player>
-- desc: Adds the specified currency to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "sis"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!addcurrency <currency type> <amount> {player}");
end;

function onTrigger(player,currency,amount,target)
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

    -- validate currency
    -- note: getCurrency does not ever return nil at the moment.  will work on this in future update.
    if (currency == nil or targ:getCurrency(currency) == nil) then
        error(player, "Invalid currency type.");
        return;
    end

    -- validate amount
    if (amount == nil or amount < 1) then
        error(player, "Invalid amount.");
        return;
    end

    -- add currency
    targ:addCurrency(currency,amount);
    local newAmount = targ:getCurrency(currency);
    player:PrintToPlayer(string.format("%s was given %i %s, for a total of %i.",targ:getName(),amount,currency,newAmount));

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/addcurrency.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "Currency type: ".. currency,
    "\n", "Amount given: ".. amount,
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
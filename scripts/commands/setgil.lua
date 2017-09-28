---------------------------------------------------------------------------------------------------
-- func: setgil
-- desc: Sets the players gil.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!setgil <amount>");
end;

function onTrigger(player, amount)
    -- validate amount
    if (amount == nil or amount < 0) then
        error(player, "Invalid amount.");
        return;
    end

    player:setGil( amount );

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/setgil.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Gil amount: ".. amount,
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
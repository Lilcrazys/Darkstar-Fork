---------------------------------------------------------------------------------------------------
-- func: takegil <amount> <player>
-- desc: Removes the amount of gil from the given player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 4,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!takegil <amount> {player}");
end;

function onTrigger(player, amount, target)

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

    -- validate amount
    local oldAmount = targ:getGil();
    if (amount == nil or amount < 1) then
        error(player, "Invalid amount of gil.");
        return;
    end
    if (amount > oldAmount) then
        amount = oldAmount;
    end

    -- remove gil
    targ:delGil(amount);
    player:PrintToPlayer(string.format("Removed %i gil from %s.  They now have %i gil.", amount, targ:getName(), targ:getGil()));

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/takegil.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "Gil given: ".. amount,
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
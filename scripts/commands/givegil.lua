---------------------------------------------------------------------------------------------------
-- func: givegil <amount> <player>
-- desc: Gives the specified amount of gil to GM or target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!givegil <amount> {player}");
end;

function onTrigger(player, amount, target)

    -- validate amount
    if (amount == nil or amount < 1) then
        error(player, "Invalid amount of gil.");
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

    -- give gil to target
    targ:addGil(amount);
    player:PrintToPlayer(string.format("Gave %i gil to %s.  They now have %i gil.", amount, targ:getName(), targ:getGil()));
    
    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/givegil.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "Gil given: ".. amount,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
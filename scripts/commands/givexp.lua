---------------------------------------------------------------------------------------------------
-- func: givexp <amount> <player>
-- desc: Gives the GM or target player experience points.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@givexp <amount> {player}");
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
    if (amount == nil or amount < 1) then
        error(player, "Invalid amount.");
        return;
    end

    -- give XP to target
    targ:addExp(amount);
    player:PrintToPlayer( string.format( "Gave %i exp to %s. They are now level %i.", amount, targ:getName(), targ:getMainLvl() ));

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/givexp.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "XP given: ".. amount.."(value given is before map config setting is applied)",
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
---------------------------------------------------------------------------------------------------
-- func: givexp <amount> <player>
-- desc: Gives the GM or target player experience points.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "is"
};

function onTrigger(player, amount, target)
    if (amount == nil or amount <= 0) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer( "@givexp <amount> <player>" );
        return;
    end

    if (target == nil) then
        player:addExp(amount);
        -- print( 'Exp amount: ' .. tostring( amount ) );
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            -- Only care to log when GM gives EXP to others..
            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/givexp.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "Target: ".. target,
            "\n", "XP given: ".. amount.."(value given is before map config setting is applied)",
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();

            targ:addExp(amount);
            -- print( 'Exp amount: ' .. tostring( amount ) );
            player:PrintToPlayer( string.format( "Gave %i exp to player '%s' \n(value given is before map config setting is applied)", amount, target ) );
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@givexp <amount> <player>" );
        end
    end
end;
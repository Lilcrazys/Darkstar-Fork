---------------------------------------------------------------------------------------------------
-- func: mp <amount> <player>
-- desc: Sets the GM or target players mana.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "is"
};

function onTrigger(player, mp, target)
    if (mp == nil) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer( "@mp <amount> <player>" );
        return;
    end

    if (target == nil) then
        player:setMP(mp);
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            targ:setMP(mp);

            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/mp.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "Target: ".. target,
            "\n", "MP set to: ".. mp,
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@mp <amount> <player>" );
        end
    end
end;
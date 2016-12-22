---------------------------------------------------------------------------------------------------
-- func: hp <amount> <player>
-- desc: Sets the GM or target players health.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "is"
};

function onTrigger(player, hp, target)
    if (hp == nil) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer( "@hp <amount> <player>" );
        return;
    end

    if (target == nil) then
        if (player:getHP() > 0) then
            player:setHP(hp);
        end
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            if (targ:getHP() > 0) then
                targ:setHP(hp);
            end

            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/hp.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "Target: ".. target,
            "\n", "HP set to: ".. hp,
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@hp <amount> <player>" );
        end
    end
end
---------------------------------------------------------------------------------------------------
-- func: tp <amount> <player>
-- desc: Sets a players tp.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "is"
};

function onTrigger(player, tp, target)
    if (tp == nil) then
        player:PrintToPlayer("You must enter a valid amount.");
        player:PrintToPlayer( "@tp <amount> <player>" );
        return;
    end

    if (target == nil) then
        player:setTP( tp );
        local pet = player:getPet();
        if (pet ~= nil) then
            pet:setTP( tp );
        end
    else
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            targ:setTP( tp );
            local pet = targ:getPet();
            if (pet ~= nil) then
                pet:setTP( tp );
            end

            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/tp.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "Target: ".. target,
            "\n", "TP set to: ".. tp,
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();
        else
            player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
            player:PrintToPlayer( "@tp <amount> <player>" );
        end
    end
end;

---------------------------------------------------------------------------------------------------
-- func: @dynareset <player name>
-- desc: Resets dynamis wait timer for target player or self
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:setVar("dynaWaitxDay", 0);
        player:PrintToPlayer("Done.");
    else
        local targ = GetPlayerByName( target );
        if (targ ~= nil) then
            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/dynareset.log", "a");
            file:write(
            "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "Target: ".. target,
            "\n",
            "\n" -- This MUST be final line.
            );
            file:close();

            targ:setVar("dynaWaitxDay", 0);
            targ:PrintToPlayer("Your Dynamis Timer has been reset.");
            player:PrintToPlayer("Done.");
        else
            player:PrintToPlayer(string.format("Player names '%s' not found!", target));
        end
    end
end
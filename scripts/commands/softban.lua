---------------------------------------------------------------------------------------------------
-- func: SoftBan
-- desc: marks player for destruction
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "ss"
};

function onTrigger(player, target, toggle)
    if (victim == nil) then
        player:PrintToPlayer("Must specify a valid online player name. ");
        player:PrintToPlayer("@softban <target> <toggle> ");
    else
        local targ = GetPlayerByName(victim);
        if (targ == nil) then
            player:PrintToPlayer(string.format("Player %s not found. ", target));
        else
            -- Log it
            local dateStamp = os.date("%d/%m/%Y");
            local timeStamp = os.date("%I:%M:%S %p");
            local file = io.open("log/commands/SoftBan.log", "a");
            file:write(
            "\n", "----------------------------------------",
            "\n", "Date: ".. dateStamp,
            "\n", "Time: ".. timeStamp,
            "\n", "User: ".. player:getName(),
            "\n", "On/Off: ".. toggle,
            "\n", "Target: ".. target,
            "\n", "----------------------------------------",
            "\n" -- This MUST be final line.
            );
            file:close();

            -- Do it
            local string = string.upper(toggle);
            if (toggle == "1" or toggle == "ON") then
                targ:setVar("SoftBan", 1);
            elseif (toggle == "0" or toggle == "OFF") then
                targ:setVar("SoftBan", 0);
            else
                player:PrintToPlayer("Invalid. Toggle must be 1/on or 0/off "
            end
        end
    end
end;

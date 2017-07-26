---------------------------------------------------------------------------------------------------
-- func: SoftBan
-- desc: marks player for destruction
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "ss"
};

function onTrigger(player, target, severity)
    if (target == nil) then
        player:PrintToPlayer("Must specify a valid online player name. ");
        player:PrintToPlayer("@softban <target> <severity> ");
        return;
    end

    if (severity == nil) then
        player:PrintToPlayer("Invalid. Severity must be 1/on or 0/off or other number from 2 to 9. \n Higher number punishes more. ");
        player:PrintToPlayer("@softban <target> <severity> ");
        return;
    end

    local targ = GetPlayerByName(target);
    if (targ == nil) then
        player:PrintToPlayer(string.format("Player %s not found online in this map server. ", target));
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
        "\n", "severity: ".. severity,
        "\n", "Target: ".. target,
        "\n" -- This MUST be final line.
        );
        file:close();

        -- Do it
        severity = string.upper(severity);
        if (severity == "1" or severity == "ON") then
            targ:setVar("SoftBan", 1);
            player:PrintToPlayer(string.format("Tier 1 SoftBan status applied to %s .. ",target));
        elseif (severity == "0" or severity == "OFF") then
            targ:setVar("SoftBan", 0);
            player:PrintToPlayer(string.format("Softban status removed from %s .. ",target));
        elseif (tonumber(severity) == nil or tonumber(severity) > 9 or tonumber(severity) < 0) then
            player:PrintToPlayer("Invalid. Severity must be 1/on or 0/off or other number from 2 to 9. \n Higher number punishes more. ");
        else
            targ:setVar("SoftBan", tonumber(severity));
            player:PrintToPlayer(string.format("Tier %d SoftBan status applied to %s .. ",tonumber(severity), target));
        end
    end
end;

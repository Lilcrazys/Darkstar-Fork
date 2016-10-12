---------------------------------------------------------------------------------------------------
-- func: completemission <logID> <missionID> <player>
-- desc: Completes the given mission for the target player, if that mission is currently active.
---------------------------------------------------------------------------------------------------

require("scripts/globals/missions");

cmdprops =
{
    permission = 2,
    parameters = "sss"
};

function onTrigger(player, logId, missionId, target)

    logId = tonumber(logId) or _G[logId];
    missionId = tonumber(missionId) or _G[missionId];

    if (missionId == nil or logId == nil) then
        player:PrintToPlayer( "You must enter a valid log id and mission id!" );
        player:PrintToPlayer( "@completemission <logID> <missionID> <player>" );
        return;
    end

    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/completemission.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. targ:getName(),
        "\n", "Log ID: ".. logId,
        "\n", "Mission ID: ".. missionId,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();

        targ:completeMission( logId, missionId );
        player:PrintToPlayer( string.format( "Completed Mission for log %u with ID %u for %s", logId, missionId, target ) );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        player:PrintToPlayer( "@completemission <logID> <missionID> <player>" );
    end
end;
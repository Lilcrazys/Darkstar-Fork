---------------------------------------------------------------------------------------------------
-- func: addquest <logID> <questID> <player>
-- desc: Adds a quest to the given targets log.
---------------------------------------------------------------------------------------------------

require("scripts/globals/quests");

cmdprops =
{
    permission = 2,
    parameters = "sss"
};

function onTrigger(player, logId, questId, target)

    logId = tonumber(logId) or _G[logId];
    questId = tonumber(questId) or _G[questId];

    if (questId == nil or logId == nil) then
        player:PrintToPlayer( "You must enter a valid log ID and quest ID!" );
        player:PrintToPlayer( "@addquest <logID> <questID> <player>" );
        return;
    end

    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName(target);
    if (targ ~= nil) then
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/addquest.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. targ:getName(),
        "\n", "Log ID: ".. logId,
        "\n", "Quest ID: ".. questId,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();

        targ:addQuest( logId, questId );
        player:PrintToPlayer( string.format( "Added Quest for log %u with ID %u to %s", logId, questId, target ) );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        player:PrintToPlayer( "@addquest <logID> <questID> <player>" );
    end
end;
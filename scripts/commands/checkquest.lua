---------------------------------------------------------------------------------------------------
-- func: @checkquest <Log ID> <Player>
-- desc: Prints status value for the specified quest.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iis"
};

function onTrigger(player,logId,questId,target)
    if (logId == nil or questId == nil) then
        player:PrintToPlayer( "You must enter a valid LogID and Quest ID!" );
        player:PrintToPlayer( "NUMBERS ONLY! See scripts\globals\quests.lua" );
        player:PrintToPlayer( "@checkquest <Log ID> <Quest ID> <Player>" );
        return;
    end

    if (target ~= nil) then
        local targ = GetPlayerByName(target);
        if (targ ~= nil) then
            local targetQuestStatus = targ:getQuestStatus(logId, questId);
            player:PrintToPlayer(string.format("Status of Log %d Quest %d for player %s is: %d", logId, questId, target, targetQuestStatus));
            player:PrintToPlayer("0 = Available (not active), 1 = Accepted (flagged), 2 = Completed." );
        else
            player:PrintToPlayer(string.format("Player named '%s' not found!", target));
        end
    else
        local playerQuestStatus = player:getQuestStatus(logId, questId);
        player:PrintToPlayer(string.format("Status of Log %d Quest %d is: %d", logId, QuestId, playerQuestStatus));
        player:PrintToPlayer("0 = Available (not active), 1 = Accepted (flagged), 2 = Completed." );
    end
end;
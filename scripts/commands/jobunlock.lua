---------------------------------------------------------------------------------------------------
-- func: jobunlock
-- desc: unlock specified job
---------------------------------------------------------------------------------------------------
require("scripts/globals/quests");
require("scripts/globals/titles");
require("scripts/globals/status");
require("scripts/globals/pets");

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, job)
    local JOB = string.upper(job);
    if (JOB == "PUP") then
        if (player:getQuestStatus(AHT_URHGAN, NO_STRINGS_ATTACHED) ~= QUEST_COMPLETED) then
            if (player:getFreeSlotsCount() > 0 and player:hasItem(17859) == false) then
                player:delQuest(AHT_URHGAN, NO_STRINGS_ATTACHED);
                player:setVar("NoStringsAttachedProgress",0);
                player:addQuest(AHT_URHGAN, NO_STRINGS_ATTACHED);
                player:addTitle(PROUD_AUTOMATON_OWNER);
                player:completeQuest(AHT_URHGAN, NO_STRINGS_ATTACHED);
                player:unlockJob(JOBS.PUP);
                player:addItem(17859);
                player:setPetName(PETTYPE_AUTOMATON, 118); -- default name
                player:unlockAttachment(8193); -- Harlequin Head
                player:unlockAttachment(8224); -- Harlequin Frame
                player:PrintToPlayer("Item obtained: animator ");
                player:PrintToPlayer("You can now become a puppetmaster. ");
            else
                player:PrintToPlayer("Item could not be obtained: animator ");
            end
        else
            player:PrintToPlayer("You already have this.. ");
        end
    else
        player:PrintToPlayer("Command not yet implemented. ");
    end
end;

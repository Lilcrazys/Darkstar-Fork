---------------------------------------------------------------------------------------------------
-- func: message2server <optional MSG_TYPE> <MSG_TEXT>
-- desc: Spoofs a chat message to the entire server.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "ss"
};

require("scripts/globals/msg");

function onTrigger(player, MSG_TYPE, text)
    player:PrintToPlayer("Sorry, this needs rewritten");
end;
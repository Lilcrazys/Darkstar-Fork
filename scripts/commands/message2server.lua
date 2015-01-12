---------------------------------------------------------------------------------------------------
-- func: @message2server <MSG_TEXT> <optional MSG_TYPE>
-- auth: TeoTwawki
-- desc: Spoofs a chat message to the entire server.
--       Will default to a normal system message if no MSG_TYPE is specified.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ss"
};

function onTrigger(player, MSG_TEXT, MSG_TYPE)
    require("scripts/globals/spoofchat");

    player:SpoofChatServer(MSG_TEXT, MSG_TYPE);
end
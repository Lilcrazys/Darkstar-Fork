---------------------------------------------------------------------------------------------------
-- func: @ecv
-- desc: Sends the servers expected client version string to the player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    local file = io.open("./version.info", "r");
    file:seek("set",91)
    player:PrintToPlayer(string.format("Expected Client Version: %s", file:read(10)));
    file:close();
end;
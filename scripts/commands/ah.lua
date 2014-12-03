---------------------------------------------------------------------------------------------------
-- func: ah
-- auth: <Unknown>
-- desc: opens Auction House anywhere
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player, npc)
	player:sendMenu(3);
end;

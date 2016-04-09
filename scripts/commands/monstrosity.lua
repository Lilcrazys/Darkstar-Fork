---------------------------------------------------------------------------------------------------
-- func: Monstrosity
-- desc: Sets the players current Monstrosity.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "i"
};

function onTrigger(player, ID)
    player:costume2(ID);
end;

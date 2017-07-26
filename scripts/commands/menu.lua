---------------------------------------------------------------------------------------------------
-- func: menu test
-- desc: used to test menu's
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "i"
};

function onTrigger(player,menu)
    player:sendMenu(menu);
end;

--------------------------------------------------------------
-- func: @shoptest
-- desc: opens a custom shop anywhere in the world
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player,id)
    if (id == nil) then
        player:PrintToPlayer("must specify an item ID.");
        player:PrintToPlayer("You can see the ID in the url on ffxiah.com");
        return;
    end
    showShop(player, STATIC, {id, 1});
end;
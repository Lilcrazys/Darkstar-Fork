---------------------------------------------------------------------------------------------------
-- func: ah
-- desc: opens the Auction House menu anywhere in the world
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    if (player:getVar("inJail") > 0 and player:getZoneID() == 131) then
        return;
    end
    player:sendMenu(3);
end;
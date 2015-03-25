---------------------------------------------------------------------------------------------------
-- func: @up <optional target> <optional number>
-- auth: TeoTwawki
-- desc: Alters vertical coordinate
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "si"
};

function onTrigger(player, target, number)
    local VALUE = 0;

    if (target == nil) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ == nil) then
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        return
    end

    if (number ~= nil and number > 0) then
        VALUE = VALUE +number;
    else
        VALUE = VALUE +1;
    end

    targ:setPos(targ:getXPos(), VALUE, targ:getZPos(), targ:getRotPos());
end;
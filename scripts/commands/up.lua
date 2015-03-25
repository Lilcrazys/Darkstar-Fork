---------------------------------------------------------------------------------------------------
-- func: @up <optional number> <optional target>
-- auth: TeoTwawki
-- desc: Alters vertical coordinate
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "is"
};

function onTrigger(player, number, target)
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
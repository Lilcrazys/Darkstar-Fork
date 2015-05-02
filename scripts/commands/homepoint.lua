---------------------------------------------------------------------------------------------------
-- func: homepoint
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil or player:getGMLevel() == 0) then
        target = player:getName();
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        if (targ:getZoneID() ~= 131) then
            targ:warp();
        else
            player:PrintToPlayer( "CANNOT TELEPORT JAILED CHARACTER!");
        end
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end;

---------------------------------------------------------------------------------------------------
-- func: @setassistant <player>
-- auth: TeoTwawki
-- desc: give or take Assistant flag on target player
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)

	if (target == nil) then
		player:PrintToPlayer( "Must specify player to promote/demote to assistant!" );
		player:PrintToPlayer( "@setassistant <player>" );
		return
	end

	local targ = GetPlayerByName(target);
	if (targ ~= nil) then
		targ:setFlag( 0x02002000 );
	else
		player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
		player:PrintToPlayer( "@setassistant <player>" );
	end

end;
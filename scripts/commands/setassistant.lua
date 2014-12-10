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
		if (targ:getVar("AssistantGM") == 1) then
			targ:setVar("AssistantGM",0);
			player:PrintToPlayer( string.format( " '%s' has been stripped of Community Assistant status", target ) );
			player:PrintToPlayer("You may need to use @setflag 0x02002000 <target> if the icon was active");
		else
			targ:setVar("AssistantGM",1);
			targ:setFlag( 0x02002000 );
			player:PrintToPlayer( string.format( " '%s' is now a Community Assistant", target ) );
			targ:PrintToPlayer("You have been granted Community Assistant status.");
		end
	else
		player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
		player:PrintToPlayer( "@setassistant <player>" );
	end

end;
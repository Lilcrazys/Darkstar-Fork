---------------------------------------------------------------------------------------------------
-- func: @help
-- auth: TeoTwawki
-- desc: Lists available GM commands.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player, target, amount)
	local gmlvl = player:getGMLevel();
	-- Displaying commands this player can use, sorted by GM tier, 3 at a time.
	if (gmlvl == 0) then -- Regular non GM players
		player:PrintToPlayer("@ah  @where  @regen");
		player:PrintToPlayer("@shop  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
	end
	-- Previous tier is already displayed, don't duplicate!
	if (gmlvl >= 1) then -- Regular GM / Assistant GM
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
	end

	if (gmlvl >= 2) then -- Senior GM
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
	end

	if (gmlvl >= 3) then -- Lead GM
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
	end

	if (gmlvl >= 4) then -- Developer (Producer in retail)
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
	end
	-- Since each prints until reaching a gmlvl the player doesn't have, 5 usually sees ALL.
	if (gmlvl >= 5) then -- Server owner (Director in retail)
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
		player:PrintToPlayer("@CommandName  @CommandName  @CommandName");
	end
	-- Although it IS technically possibly to create tiers as high as 255...
end;

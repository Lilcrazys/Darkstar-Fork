---------------------------------------------------------------------------------------------------
-- func: costume
-- auth: <Unknown>
-- desc: Sets the players current costume.
---------------------------------------------------------------------------------------------------

cmdprops =
{
	permission = 0,
	parameters = "i"
};

function onTrigger(player, costume)
	local ZoneID = player:getZone():getID();
	local RegionID = player:getCurrentRegion();
	if ( (player:getGMLevel() >= 4)
		or (RegionID == 19 or RegionID == 20 or RegionID == 21 or RegionID == 22)
		or (ZoneID == 48 ZoneID == 50 or (ZoneID >= 247 and ZoneID <= 250)
		or ZoneID == 252 or ZoneID == 256 or ZoneID == 257 or ZoneID == 280) ) then
		player:costume( costume );
	else
		player:PrintToPlayer("@costume cannot be used in this area for server stability reasons.");
	end
end;
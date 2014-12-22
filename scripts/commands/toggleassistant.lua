---------------------------------------------------------------------------------------------------
-- func: @toggleassistant
-- auth: TeoTwawki
-- desc: Toggles a Assistant nameflags/icon (in retail, that icon is for trial accounts).
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	-- First make sure player is a designated assistant.
	if (player:getVar("AssistantGM") == 1) then
		-- Check for and set normal GM flags to off, just in case.
		-- This is copypasta from @togglegm so I certainly hope it works this way.
		if (player:checkNameFlags(0x04000000)) then
			if (player:checkNameFlags(0x04000000)) then
				player:setFlag(0x04000000);
			end
			if (player:checkNameFlags(0x05000000)) then
				player:setFlag(0x05000000);
			end
			if (player:checkNameFlags(0x02000000)) then
				player:setFlag(0x02000000);
			end
		end
		-- And now setting our intended icon and name color.
		player:setFlag( 0x02002000 );
	end
end;
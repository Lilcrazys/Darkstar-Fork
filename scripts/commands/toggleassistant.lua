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
	if (player:getVar("AssistantGM") == 1) then
		player:setFlag( 0x02002000 );
	end
end
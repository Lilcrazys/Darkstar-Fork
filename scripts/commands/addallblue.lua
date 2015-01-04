---------------------------------------------------------------------------------------------------
-- func: addallblu
-- auth: Omni
-- desc: Adds all blue spells
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 4,
    parameters = "i"
};

function onTrigger(player, spellId)
	for i = 513, 746 do
		player:addSpell(i);
	end
	
    player:PrintToPlayer( 'All Blue magic learned!' );
end
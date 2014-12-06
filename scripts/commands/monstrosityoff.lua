---------------------------------------------------------------------------------------------------
-- func: monstrosityoff
-- auth: Omni
-- desc: turns off Monstrosity costume
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player, id)
  
    player:costume2(0);
end
			 
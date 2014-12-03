----------------------------------------------------------------------------------
-- @boost
-- stat fix from del attributes from overlaying effects
----------------------------------------------------------------------------------


cmdprops =
{
    permission = 1,
    parameters = ""
};

function onTrigger(player)
   -- player:boost();
    --player:printToPlayer('Attributes Added!');


        player:addMod(MOD_MATT,5000);
        player:addMod(MOD_MACC,5000);
        player:addMod(MOD_RDEF,5000);
        player:addMod(MOD_DEF,5000);
        player:addMod(MOD_MDEF,5000);


	end;

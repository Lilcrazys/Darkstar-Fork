---------------------------------------------------------------------------------------------------
-- func: goto z49
-- desc: with goto broken allows players to come test in 49
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1, -- Disabled non GM use because of multi-boxing related server crash
    parameters = ""
};

function onTrigger(player, target)
     player:setPos(12, 0, -30, 194, 49);
end;
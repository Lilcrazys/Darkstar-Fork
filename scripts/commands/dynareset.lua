---------------------------------------------------------------------------------------------------
-- func: @dynareset <player name>
-- auth: TeoTwawki
-- desc: Resets dynamis wait timer for target player or self
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:setVar("dynaWaitxDay", 0);
        player:PrintToPlayer("Done.");
    else
        local targ = GetPlayerByName( target );
        if (targ ~= nil) then
            targ:setVar("dynaWaitxDay", 0);
            targ:PrintToPlayer("Your Dynamis Timer has been reset.");
            player:PrintToPlayer("Done.");
        else
            player:PrintToPlayer(string.format("Player names '%s' not found!", target));
        end
    end
end
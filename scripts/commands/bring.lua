---------------------------------------------------------------------------------------------------
-- func: @bring <player>
-- auth: <Unknown>
-- desc: Brings the target to the player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)

    if (player:getGMLevel() <= 1 and not(player:getVar("AssistantGM") == 1 and (player:checkNameFlags(0x02002000) or player:checkNameFlag(0x02022000)))) then
       return;
    end
    if (target == nil) then
        player:PrintToPlayer("You must enter a target player name.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        targ:setPos( player:getXPos(), player:getYPos(), player:getZPos(), 0, player:getZoneID() );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end
---------------------------------------------------------------------------------------------------
-- func: goto
-- auth: bluekirby0
-- desc: Goes to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player, target)

    if (player:getGMLevel() < 1 and not(player:getVar("AssistantGM") == 1 and (player:checkNameFlags(0x02002000) or player:checkNameFlag(0x02022000)))) then
        return;
    end

    if (target == nil) then
        player:PrintToPlayer("You must enter a valid player name.");
        return;
    end

    local targ = GetPlayerByName( target );
    if (targ ~= nil) then
        player:setPos( targ:getXPos(), targ:getYPos(), targ:getZPos(), 0, targ:getZoneID() );
    else
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
    end
end
---------------------------------------------------------------------------------------------------
-- func: @checknexus
-- desc: returns the time a player last used the nexus cape.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, target)
    if (target == nil) then
        player:PrintToPlayer("Must specify a target to check.");
        return;
    end

    local targ = GetPlayerByName(target);
    if (targ == nil) then
        player:PrintToPlayer(string.format( "Invalid player '%s' given.", target));
        return;
    end

    local hour = targ:getVar("NexusCapeHOUR");
    local minute = targ:getVar("NexusCapeMINUTE");
    if (hour == 0 and minute == 0) then
        player:PrintToPlayer("The variables are empty (zero or nil).");
        return;
    end

    if (minute < 10) then
        minute = "0"..minute;
    end

    player:PrintToPlayer("player '"..targ:getName().."' last used Nexus Cape at "..hour..":".. minute);
end;

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
    local date = targ:getVar("NexusCapeDATE");
    if (hour == 0 and minute == 0) then
        player:PrintToPlayer("The variables are empty (zero or nil).");
        return;
    end

    if (minute < 10) then
        minute = "0"..minute;
    end

    local osDate = os.date("*t")
    local month = osDate.month;
    if (month < 10) then month = tostring("0"..month); end
    local day = osDate.day;
    if (day < 10) then day = tostring("0"..day); end
    local today = osDate.year .. month .. day;
    local now = osDate.hour ..":" .. osDate.min;
    player:PrintToPlayer("Current date: "..today.."  Current Time: ".. now);
    if (date > 0) then
        player:PrintToPlayer("player '"..targ:getName().."' last used Nexus Cape on "..date);
    else
        player:PrintToPlayer("Datestamp not found. This alone is not indication of cheating.");
    end
    player:PrintToPlayer("player '"..targ:getName().."' last used Nexus Cape at "..hour..":".. minute);
end;

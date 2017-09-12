---------------------------------------------------------------------------------------------------
-- func: promote
-- desc: Promotes the player to a new GM level.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "si"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!promote <player> <level>");
end;

function onTrigger(player, target, level)
    -- determine maximum level player can promote to
    local maxLevel = player:getGMLevel() - 1;
    if (maxLevel < 1) then
        maxLevel = 0;
    end

    -- validate target
    local targ;
    if (target == nil) then
        error(player, "You must provide a player name.");
        return;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format( "Player named '%s' not found!", target ) );
            return;
        end
    end

    -- catch players trying to change level of equal or higher tiered GMs.
    if (targ:getGMLevel() >= player:getGMLevel()) then
        printf( "%s attempting to adjust same or higher tier GM %s.", player:getName(), targ:getName() );
        --[[
        targ:PrintToPlayer(string.format( "%s attempted to adjust your GM rank.", player:getName() ));
        ]]
        error(player, "You can not use this command on same or higher tiered GMs.");
        return;
    end

    -- validate level
    if (level == nil or level < 0 or level > maxLevel) then
        error(player, string.format("Invalid level.  Must be 0 to %i.", maxLevel ));
        return;
    end

    -- change target gm level
    targ:setGMLevel(level);
    player:PrintToPlayer(string.format( "%s set to GM tier %i.", targ:getName(), level ));
    --[[
    targ:PrintToPlayer(string.format( "You have been set to GM tier %i.", level ));
    ]]

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/promote.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "User's GM tier: ".. player:getGMLevel(),
    "\n", "Target: ".. targ:getName(),
    "\n", "GM tier applied: ".. level,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
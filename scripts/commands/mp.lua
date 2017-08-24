---------------------------------------------------------------------------------------------------
-- func: mp <amount> <player>
-- desc: Sets the GM or target players mana.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!mp <amount> {player}");
end;

function onTrigger(player, mp, target)
    -- validate amount
    if (mp == nil or tonumber(mp) == nil) then
        error(player, "You must provide an amount.");
        return;
    elseif (mp < 0) then
        error(player, "Invalid amount.");
        return;
    end

    -- validate target
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format( "Player named '%s' not found!", target ) );
            return;
        end
    end
    
    -- set mp
    if (targ:getHP() > 0) then
        targ:setMP(mp);
        if(targ:getID() ~= player:getID()) then
            player:PrintToPlayer(string.format("Set %s's MP to %i.", targ:getName(), targ:getMP()));
        end
    else
        player:PrintToPlayer(string.format("%s is currently dead.", targ:getName()));
    end

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/mp.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. target,
    "\n", "MP set to: ".. mp,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
---------------------------------------------------------------------------------------------------
-- func: hp <amount> <player>
-- desc: Sets the GM or target players health.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 6,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!hp <amount> {player}");
end;

function onTrigger(player, hp, target)
    -- validate amount
    if (hp == nil or tonumber(hp) == nil) then
        error(player, "You must provide an amount.");
        return;
    elseif (hp < 0) then
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

    -- set hp
    if (targ:getHP() > 0) then
        targ:setHP(hp);
        if(targ:getID() ~= player:getID()) then
            player:PrintToPlayer(string.format("Set %s's HP to %i.", targ:getName(), targ:getHP()));
        end
    else
        player:PrintToPlayer(string.format("%s is currently dead.", targ:getName()));
    end

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/hp.log", "a");
    file:write(
    "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "HP value used: ".. hp,
    "\n",
    "\n" -- This MUST be final line.
    );
    file:close();
end
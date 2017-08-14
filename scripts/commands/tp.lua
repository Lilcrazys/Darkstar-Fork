---------------------------------------------------------------------------------------------------
-- func: tp <amount> <player>
-- desc: Sets a players tp. If they have a pet, also sets pet tp.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "is"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("@tp <amount> {player}");
end;

function onTrigger(player, tp, target)

    -- validate amount
    if (tp == nil or tonumber(tp) == nil) then
        error(player, "You must provide an amount.");
        return;
    elseif (tp < 0) then
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

    -- set tp
    targ:setTP( tp );
    local pet = targ:getPet();
    if (pet ~= nil) then
        pet:setTP( tp );
    end
    if(targ:getID() ~= player:getID()) then
        player:PrintToPlayer(string.format("Set %s's TP to %i.", targ:getName(), targ:getTP()));
    end

    -- Log it
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/tp.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "TP set to: ".. tp,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();
end;
---------------------------------------------------------------------------------------------------
-- func: pos <x> <y> <z> <optional zone> <optional target>
-- desc: Sets the players position. If none is given, prints out the position instead.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "sssss"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!pos {x} {y} {z} {zone ID} {player}");
end;

function onTrigger(player, arg1, arg2, arg3, arg4, arg5)
    local target;
    local zoneId;
    local x;
    local y;
    local z;
    local targ;

    -- shift arguments depending on number passed
    if (arg5 ~= nil) then
        x = tonumber(arg1);
        y = tonumber(arg2);
        z = tonumber(arg3);
        zoneId = arg4;
        target = arg5;
    elseif (arg4 ~= nil) then
        x = tonumber(arg1);
        y = tonumber(arg2);
        z = tonumber(arg3);
        if (GetPlayerByName(arg4) == nil) then
            zoneId = arg4;
        else
            target = arg4;
        end
    elseif (arg3 ~= nil) then
        x = tonumber(arg1);
        y = tonumber(arg2);
        z = tonumber(arg3);
    elseif (arg1 ~= nil) then
        target = arg1;
    end
    
    -- validate target
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName(target);
        if (targ == nil) then
            error(player, string.format( "Player named '%s' not found!", target ) );
            return;
        end
    end
    
    -- validate zone
    if (zoneId ~= nil) then
        zoneId = tonumber(zoneId);
        if (zoneId == nil or zoneId < 0 or zoneId > 285) then
            error(player, "Invalid zone ID.");
            return;
        end
    end

    -- Log it
    local posVar;
    if (zoneId == nil) then
        posVar = x.." ".. y.." ".. z;
    else
        posVar = x.." ".. y.." ".. z.." ".. zoneId;
    end
    local dateStamp = os.date("%d/%m/%Y");
    local timeStamp = os.date("%I:%M:%S %p");
    local file = io.open("log/commands/pos.log", "a");
    file:write(
    "\n", "----------------------------------------",
    "\n", "Date: ".. dateStamp,
    "\n", "Time: ".. timeStamp,
    "\n", "User: ".. player:getName(),
    "\n", "Target: ".. targ:getName(),
    "\n", "pos: ".. posVar,
    "\n", "----------------------------------------",
    "\n" -- This MUST be final line.
    );
    file:close();

    -- report or move position
    if (x == nil or y == nil or z == nil) then
        player:PrintToPlayer(string.format("%s's position: X %.4f  Y %.4f  Z %.4f", targ:getName(), targ:getXPos(), targ:getYPos(), targ:getZPos() ));
    else
        if (zoneId == nil) then
            zoneId = targ:getZoneID();
            targ:setPos(x, y, z, 0);
        else
            targ:setPos(x, y, z, 0, zoneId);
        end
        if (player:getID() ~= targ:getID()) then
            player:PrintToPlayer(string.format("Moved %s to (%.4f, %.4f, %.4f) in zone %i.", targ:getName(), x, y, z, zoneId));
        end
    end

end;

---------------------------------------------------------------------------------------------------
-- func: pos <x> <y> <z> <optional zone> <optional target>
-- desc: Sets the players position. If none is given, prints out the position instead.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiiis"
};

function onTrigger(player, x, y, z, zone, target)
    local targ;
    if (target == nil) then
        targ = player;
    else
        targ = GetPlayerByName( target );
    end

    if (targ == nil) then
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
        return
    end

    if (x == nil or y == nil or z == nil and zone == nil) then
        targ:showPosition();
    else
        local posVar;
        if (zone == nil) then
            posVar = x.." ".. y.." ".. z;
        else
            posVar = x.." ".. y.." ".. z.." ".. zone;
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

        if (zone == nil) then
            targ:setPos(x, y, z, 0);
        else
            targ:setPos(x, y, z, 0, zone);
        end
    end
end;

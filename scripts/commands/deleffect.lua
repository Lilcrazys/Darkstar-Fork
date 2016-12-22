---------------------------------------------------------------------------------------------------
-- func: deleffect
-- desc: removes the specified effect from the given player.
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 6,
    parameters = "si"
};

function onTrigger(player, target, id)

    -- Ensure a target is set..
    if (target == nil) then
        player:PrintToPlayer( "Target required; cannot be nil." );
        return;
    end

    local effectTarget = player;

    -- check if target name was entered
    local num = tonumber(target)
    if (type(num) == "number") then
        id = num
    else
        local pc = GetPlayerByName(target);
        if (pc ~= nil) then
            effectTarget = pc;
        else
            id = _G[target];
        end

        if (id == 0 or id == nil) then
            id = 1;
        end
    end

    if (id == nil) then
        player:PrintToPlayer( "Effect id cannot be nil." );
        return;
    end

    if (effectTarget:delStatusEffect(id)) then
        local targName;
        if (target ~= nil and pc ~= nil) then
            targName = target;
        else
            targName = player:getName();
        end
        local dateStamp = os.date("%d/%m/%Y");
        local timeStamp = os.date("%I:%M:%S %p");
        local file = io.open("log/commands/deleffect.log", "a");
        file:write(
        "\n", "----------------------------------------",
        "\n", "Date: ".. dateStamp,
        "\n", "Time: ".. timeStamp,
        "\n", "User: ".. player:getName(),
        "\n", "Target: ".. targName,
        "\n", "Effect ID: ".. id,
        "\n", "----------------------------------------",
        "\n" -- This MUST be final line.
        );
        file:close();
    end
end